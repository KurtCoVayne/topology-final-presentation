MAIN = main
PDF  = $(MAIN).pdf

.PHONY: build view clean distclean

build: $(PDF)

$(PDF): $(MAIN).tex preamble.tex references.bib $(wildcard sections/*.tex)
	latexmk -pdf $(MAIN).tex

view: build
	open $(PDF)

clean:
	latexmk -c $(MAIN).tex
	rm -rf _minted* *.data.minted *.bbl *.run.xml *.bcf

distclean: clean
	latexmk -C $(MAIN).tex
	rm -f $(PDF)
