.PHONY : all clean help main main.tex
.ONESHELL: # Applies to every targets in the file!
.INTERMEDIATE : inkscape
## make all : regenerate all results.
all: inkscape main ebook release

## make main : genreate the main pdf
main:  build/main.pdf

## make ebook: generate the ebook pdf
ebook: build/ebook.pdf
	rm ebook.tex

## make release: make the pdf without todo
release: build/release.pdf
	rm release.tex

## make quick: quick mode, just xelatex once,it ignore the bib files
quick: inkscape main.tex build
	xelatex -output-directory="./build" main.tex

## make *.pdf : generate the pdf files
build/%.pdf: %.tex build inkscape
	xelatex -output-directory="./build" $<
	bibtex ./build/$(basename $<)
	xelatex -output-directory="./build" $<
	xelatex -output-directory="./build" $<

## make inkscape: if has inkscape svg,convert it into pdf+latex version
inkscape:
	if inkscape --version
	then
		cd figures
		for i in $$(find . -type f -name '*.svg');do
			inkscape $$i --export-filename=_$$(basename $$i .svg ).pdf \
			  --export-latex --export-area-drawing
		done
	fi

ebook.tex : build
	echo "\documentclass[ebook]{contestTemplate}" > ebook.tex
	awk 'FNR>5' main.tex >> ebook.tex

release.tex: build
	echo "\PassOptionsToPackage{disable}{todonotes} " > release.tex
	echo "\documentclass[pdfCover]{contestTemplate}" >> release.tex
	awk 'FNR>5' main.tex >> release.tex

release.tex:

clean:
	# git ls-files --others | xargs gio trash
	git clean -fXd

## make build: create directory build
build:
	mkdir build

## make help : show this message.
help :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' \
		| column -t -s ':'
