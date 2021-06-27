.PHONY : all clean help report docs
.ONESHELL: # Applies to every targets in the file!
# .INTERMEDIATE : report
## make all : regenerate all results.
all: report

## make quick_report: genreate the main file qucikly
quick_report:
	make --directory=report quick

## make report : generate report file
report: docs
	make --directory=report
	pdftk report/build/release.pdf \
	  docs/build/doxygen_latex/refman.pdf \
		cat output report/build/_release.pdf
	mv report/build/release.pdf report/build/release_without_attachment.pdf
	mv report/build/_release.pdf report/build/release.pdf

## make docs: generate the docs from doxygen
docs:
	cd docs
	doxygen
	cd build/doxygen_latex
	make all

clean:
	# git ls-files --others | xargs gio trash
	git clean -fXd
	rm report/figures/_*

## make build: create directory build
build:
	mkdir build

## make help : show this message.
help :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' \
		| column -t -s ':'
