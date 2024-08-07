#!/usr/bin/bash

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'gh-pages: deploy'

git push -f git@github.com:rbobillot/polimatch.git main:gh-pages

cd -

rm -rf dist
