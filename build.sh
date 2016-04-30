#!/bin/bash

# Clean out html folder
rm -rf html/*

# Move over assets
mkdir -p 'html/js'
mkdir -p 'html/img'
mkdir -p 'html/fonts'
mkdir -p 'html/css'

cp -r assets/js/ html/
cp -r assets/img/ html/
cp -r assets/fonts/ html/
cp -r assets/css/ html/

cp assets/Resume.pdf html/

jade --pretty jade --out html

# Delete extra files
rm html/classes.html
rm html/extraCurriculars.html
rm html/sideprojects.html