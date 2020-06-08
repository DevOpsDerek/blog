#!/bin/bash
# A script to publish the Hugo site
DIR="/Users/derekcampbell/Documents/GitHub/devopsderek.github.io"
d=$(date +%Y-%m-%d)
URL="devopsderek.net"

# Setting the destination file
hugo --destination "$DIR"

# Changing Directory
cd "$DIR"

# Adding in Custom URL for Github Pages
echo "$URL" > CNAME

# Adding all changes
git add --all

# Commiting updated website with date
git commit -m "Updating website on $d"

# Pushing to Master branch
git push -f origin master