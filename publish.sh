# Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm  ../s-boardman.github.io/cv/*html
rm  ../s-boardman.github.io/cv/media/*css

# re-add new
cp _site/index.html ../s-boardman.github.io/cv/.
cp _site/media/* ../s-boardman.github.io/cv/media/
