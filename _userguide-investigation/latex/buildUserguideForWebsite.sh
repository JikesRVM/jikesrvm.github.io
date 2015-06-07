#!/bin/sh

tmpDir="userguide-for-website-build-tmp"
tmpFile="cat-tmp-html"

# Copy files to build dir
rm -rf $tmpDir
mkdir $tmpDir
cp * $tmpDir
cp -r images/ $tmpDir

cd $tmpDir

# Clean unneeded files
rm *.sh
rm README

# Generate user guide
htlatex index.tex "html-website.cfg,html,2"

# Remove temporary tex files
rm *.log *.aux *.dvi *.4ct *.idv *.lg *.tmp *.xref *.out
# Remove output files not intended for website
rm *.pdf
# Remove source files
rm *.tex
rm *.cfg
