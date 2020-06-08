#!/bin/bash
# A script to publish the Hugo site
DIR="/Users/derekcampbell/Documents/GitHub/devopsderek.github.io"
d=$(date +%Y-%m-%d)

hugo --destination "$DIR"
cd "$DIR"
echo "devopsderek.net" > CNAME
git add --all
git commit -m "updating website on $d"
git push -f origin master