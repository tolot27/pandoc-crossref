all: filter pdf latex html md clean

filter:
	git checkout master pandoc-crossref.hs

clean:
	rm pandoc-crossref.hs

pdf: filter
	pandoc -t latex --filter ./pandoc-crossref.hs -o output.pdf -i demo.md

latex: filter
	pandoc -t latex --filter ./pandoc-crossref.hs -o output.latex -i demo.md

html: filter
	pandoc -t html --filter ./pandoc-crossref.hs -o output.html -i demo.md

md: filter
	pandoc -t markdown --filter ./pandoc-crossref.hs -o output.md -i demo.md
