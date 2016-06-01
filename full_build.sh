#!/bin/bash

echo '--- Starting Full Build ---'

# Clean out html folder
echo '--- Clean out HTML folder ---'

rm -rf html/*

# Move over assets
echo '--- Move over assets ---'

mkdir -p 'html/js'
mkdir -p 'html/img'
mkdir -p 'html/fonts'
mkdir -p 'html/css'

cp -r assets/js/ html/
cp -r assets/img/ html/
cp -r assets/fonts/ html/
cp -r assets/css/ html/

cp assets/csheahan_Resume.pdf html/

echo ''
echo '--- Compile Code ---'
echo ''

jade --pretty jade --out html

# Delete extra files
echo '--- Remove extra files ---'

rm html/classes.html
rm html/extraCurriculars.html
rm html/sideprojects.html

# Check for broken links
echo ''
echo '--- Check for broken links ---'
echo ''

python scripts/check404.py html/*.html
