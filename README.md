# md-cv

My markdown CV, which currently looks something like [this](http://s-boardman.io/cv/). I forked this from [blmoore](https/github.com/blmoore) who has a useful [blog post](http://blm.io/blog/markdown-academic-cv/) for setup details.

### How to run 

A (jekyll-based) markdown CV tweaked slightly from the great design by [elipapa](https://github.com/elipapa/markdown-cv).

To build, clone the repo and run jekyll:

```bash
git clone git://github.com/s-boardman/md-cv
cd md-cv/
jekyll serve
```

Then point your browser at [0.0.0.0:4000](0.0.0.0:4000).

### HTML version

The HTML version is generated by Jekyll under `_site` using `media/cv-screen.css`. Most changes from the original repo are artificial:

* fixed horizontal scrolling issue caused by lots of funky CSS positioning (lots of `left` etc.) (blmoore)
* messed with colours, fonts (blmoore & s-boardman)
* now imports font-awesome icons and Open sans (blmoore)
* moved `ul` into 2-col layout (s-boardman)

### PDF version (blmoore)

Note the separate CSS for print and screen media (see `media/cv-print.css`), my approach was to build a somewhat "jazzy" html version and a toned-down print version (for PDF). My changes introduce CSS3 columns in some sections which currently don't print to PDF under the blink/webkit engines (as of March 2015), so to print properly I suggest firefox.

Another problem with the PDF is pagebreaks, they're often not handled gracefully so I've added one in explicitly. Say you want a pagebreak before the section titled "education" (`h2` text is set to `id` so use unique section headers!), the print media CSS would be:

```CSS
#education {
	page-break-before: always;
}
```
