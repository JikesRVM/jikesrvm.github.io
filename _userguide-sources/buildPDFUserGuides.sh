#!/bin/sh

# Builds several PDF versions of the userguide.
# We build several versions because of differing page sizes.

mainFile="userguide.tex"
mainFileA4="userguide-a4.tex"
mainFileLetter="userguide-letter.tex"
buildDir="userguide-pdfs"

# Copy files to build dir
rm -rf $buildDir
mkdir $buildDir
cp * $buildDir
cp -r images/ $buildDir

cd $buildDir

# Clean unneeded files. That's not really necessary for debugging but
# it makes it easier to recognize the current directory.
rm *.sh
rm README
rm *.css
rm *.log *.aux *.dvi *.4ct *.idv *.lg *.tmp *.xref *.out *.synct* *.toc
rm *.html
rm *.cfg
# Clean up any pdf files in the directory that may have been left over from manual builds in the main directoy (e.g. via GUI tools)
rm *.pdf

# Generate A4 paper version
cp $mainFile $mainFileA4
# Clean up
latexmk -pdf -c $mainFileA4
# Build
latexmk -pdf $mainFileA4

# Generate letter paper version
sed s/a4paper/letterpaper/ $mainFile > $mainFileLetter
# Clean up
latexmk -pdf -c $mainFileLetter
# Build
latexmk -pdf $mainFileLetter

# Clean up again
latexmk -pdf -c

# Clean most unneeded files. That's not really necessary for debugging but
# it makes it easier to recognize the current directory.
rm *.sh
rm README
rm *.css
rm *.log *.aux *.dvi *.4ct *.idv *.lg *.tmp *.xref *.out *.synct* *.toc
rm *.html
rm *.tex
rm *.cfg
