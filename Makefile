README = README.md
NAME   = komacv-rg
INS    = $(NAME).ins
PKG    = $(patsubst %.dtx,%.sty,$(wildcard *.dtx))
DOC    = $(patsubst %.dtx,%.pdf,$(wildcard *.dtx))
SRC    = $(wildcard *.dtx)
CTAN   = $(SRC) $(INS) $(DOC) $(README)

all: package docs
.PHONY: all package docs clean ctan

package: $(PKG)
docs:    $(DOC)

%.sty: %.dtx $(INS)
	latex $(INS)

%.pdf: %.dtx %.sty
	pdflatex $<
	makeindex -s gind.ist -o $*.ind $*.idx
	makeindex -s gglo.ist -o $*.gls $*.glo
	pdflatex $<
	pdflatex $<

ctan: $(CTAN)
	mkdir $(NAME)
	cp $(CTAN) $(NAME)/
	zip -r $(NAME)-$(shell date "+%Y-%m-%d").zip $(NAME)
	rm -rf $(NAME)

clean:
	rm -f *.{aux,glo,gls,hd,idx,ilg,ind,log,out,toc,tmp}

