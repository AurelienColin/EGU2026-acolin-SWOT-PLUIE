TECTONIC = tectonic
MAIN = main

.PHONY: pdf clean init

pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex clsposter.sty references.bib images/cls_logo.png
	$(TECTONIC) $(MAIN).tex

clean:
	rm -f *.pdf *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.bcf *.blg *.run.xml

init:
	git submodule update --init --recursive
