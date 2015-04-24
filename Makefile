.PHONY:all
all:
	pdflatex metric-rhythm.tex
	bibtex metric-rhythm.aux
	pdflatex metric-rhythm.tex
	pdflatex metric-rhythm.tex
	echo DONE

.PHONY:check
check:
	! grep -i warning: metric-rhythm.log

clean:
	rm -f *.pdf *.aux *.blg *.bbl *.log
