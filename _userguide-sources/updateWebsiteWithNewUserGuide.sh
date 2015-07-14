#!/bin/sh

# Builds a new userguide and updates the website.
# Note: error handling is practically non existent.

# To inspect the result, you will need to build a local
# version of the website with Jekyll.

# FIXME: Links in the built user guide are broken.
# They must be adapted for Jekyll with post-processing,
# e.g. with sed.

mainFile="userguide.tex"
websiteFile="index.tex"

tmpDir="userguide-for-website-build-tmp"
frontmatterFile="jekyll-frontmatter"
tmpFile="cat-tmp-html"

# Copy files to build dir
rm -rf $tmpDir
mkdir $tmpDir
cp * $tmpDir
cp -r images/ $tmpDir
# Copy base CSS
cp ../css/custom.css $tmpDir

cd $tmpDir

# Clean unneeded files
rm *.sh
rm README

# Rename TeX source file to get an index.html for the website
mv $mainFile $websiteFile

# Generate user guide
htlatex $websiteFile "html-website.cfg,html,3"

# Add Jekyll frontmatter
for htmlFile in *.html
do
  cat $frontmatterFile $htmlFile > $tmpFile
  mv $tmpFile $htmlFile
done

# Copy new CSS
rm ../../css/index.css
cp index.css ../../css/

# Remove output that belongs somewhere else
rm *.css
# Remove temporary tex files
rm *.log *.aux *.dvi *.4ct *.idv *.lg *.tmp *.xref *.out
# Remove output files not intended for website
rm *.pdf
# Remove source files
rm *.tex
rm *.cfg
rm $frontmatterFile

# Update 
cd ..
rm -rf ../userguide-wip
mv $tmpDir ../userguide-wip
