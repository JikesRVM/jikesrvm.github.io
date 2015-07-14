#!/bin/sh

mainFile="userguide.tex"
buildDir="userguide-for-local-debugging"

# Copy files to build dir
rm -rf $buildDir
mkdir $buildDir
cp * $buildDir
cp -r images/ $buildDir
# Copy base CSS
cp ../css/custom.css $buildDir

cd $buildDir

# Generate user guide
htlatex $mainFile "html-website.cfg,html,3"

# Clean unneeded files. That's not really necessary for debugging but
# it makes it easier to recognize the current directory.
rm *.sh
rm README
rm *.css
rm *.log *.aux *.dvi *.4ct *.idv *.lg *.tmp *.xref *.out
rm *.pdf
rm *.tex
rm *.cfg
