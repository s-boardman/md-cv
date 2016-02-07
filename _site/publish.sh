# Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm -R ../s-boardman.github.io/cv/*

# re-add new
cp _site/index.html ../s-boardman.github.io/cv/.
cp -R _site/media ../s-boardman.github.io/cv/.
