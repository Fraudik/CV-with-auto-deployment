FROM ubuntu:18.10

RUN apt-get update && apt-get install --yes --no-install-recommends \
    biber \
    cm-super \
    dvipng \
    texlive-base \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-extra \
    texlive-generic-recommended \
    texlive-lang-cyrillic \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-pictures \
    texlive-science

COPY CV /CV
WORKDIR /CV
CMD pdflatex -interaction=nonstopmode main.tex
