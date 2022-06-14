FROM ubuntu:18.10

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak && sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list && apt-get update && apt-get dist-upgrade && apt-get install --yes --no-install-recommends \
    cm-super \
    dvipng \
    texlive-base \
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
CMD cd /CV && pdflatex -interaction=nonstopmode main.tex && cp main.pdf ../
