.PHONY:all
all:
	pdflatex asgl-desc.tex
	bibtex asgl-desc.aux
	pdflatex asgl-desc.tex
	pdflatex asgl-desc.tex
	echo DONE

.PHONY:check
check:
	! grep -i warning: asgl-desc.log

clean:
	rm -f *.pdf *.aux *.blg *.bbl *.log
	if [ -n "`git clean -nxd`" ]; then git clean -nxd; exit 1; fi
