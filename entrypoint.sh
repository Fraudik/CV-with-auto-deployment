#!/bin/sh

cp /etc/apt/sources.list /etc/apt/sources.list.bak && sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list && apt-get update && apt-get dist-upgrade && apt-get install --yes --no-install-recommends \
    cm-super \
    dvipng \
    texlive-base \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-lang-cyrillic \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-pictures \
    texlive-science \
    biber \
    texlive-bibtex-extra \
    lmodern

cp CV/main.tex ./
pdflatex -interaction=nonstopmode main.tex
