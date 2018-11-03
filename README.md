The komacv-rg Bundle
=======================

Copyright (C) 2016-2018 Richard Grewe

Released under the [LaTeX Project Public License](http://www.latex-project.org/lppl/) version 1.2 or later

## Abstract

The `komacv-rg` bundle provides packages that aid in creating CVs based
on the `komacv` class and creating related documents, such as cover letters
and cover sheets for job applications.
Concretely, the bundle consists of three packages: `komacv-addons`,
`komacv-lco`, and `komacv-multilang`.
`komacv-addons` is a small collection of add-ons and fixes for the
`komacv` class; `komacv-lco` enables the use of letter class options
from `scrlttr2` also in `komacv`-based and other non-`scrlttr2`-based
documents; `komacv-multilang` enables the provisioning of CVs in multiple
languages and the selection of a language via `babel` or `polyglossia`.

## Availability

The `komacv-rg` bundle is on [CTAN](http://www.ctan.org/pkg/komacv-rg),
where you can also find the [documentation](http://mirrors.ctan.org/macros/latex/contrib/komacv-rg/) of the packages contained in the bundle,
as well as on [github](https://github.com/Ri-Ga/komacv-rg).

## Manual Installation

The `komacv-rg` package comes with (at least) the following files
* komacv-rg.ins
* komacv-addons.dtx
* komacv-lco.dtx
* komacv-multilang.dtx
* README.md

and possibly also with
* Makefile
* komacv-addons.pdf and komacv-addons.sty (generated from komacv-addons.dtx)
* komacv-lco.pdf and komacv-lco.sty (generated from komacv-lco.dtx)
* komacv-multilang.pdf and komacv-multilang.sty (generated from komacv-multilang.dtx)

To install the `komacv-rg` bundle, you additionally need
* docstrip.tex

To build the packages of the bundle (the `.sty` files), run one of the following
```
    latex komacv-rg.ins
    make package (needs Makefile)
```

Put the resulting `.sty` files somewhere where LaTeX can find them.
Read the documentation of your LaTeX system to find out where this
might be.

## Building Documentation

To build the documentation of the `komacv-rg` bundle, you additionally
need the following classes and packages (including their dependencies)
* ltxdoc
* babel
* cleveref
* csquotes
* datetime2, datetime2-calc
* enumitem
* etoolbox
* filecontents
* fontawesome
* fontenc
* hypdoc
* idxlayout
* inputenc
* keyvaltable
* letltxmacro
* marvosym
* multilang, multilang-sect, multilang-tags
* pbox
* scrkbase, scrlfile
* showexpl
* translations
* xspace

as well as
* pdflatex

To build the documentation (`.pdf` files for the packages), either run
```
    make docs
```
or the following sequence of commands for `PKG` being one of `komacv-addons`,
`komacv-lco` or `komacv-multilang`.
```
    pdflatex PKG.dtx
    makeindex -s gind.ist -o PKG.ind PKG.idx
    makeindex -s gglo.ist -o PKG.gls PKG.glo
    pdflatex PKG.dtx
    pdflatex PKG.dtx
```

Happy TeX'ing
