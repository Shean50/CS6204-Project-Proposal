#-------------------------------------------------------------------------------
#
# Makefile to compile the paper
# Usage:
#     - ``make h``: compile the tex files into "main.pdf"
#     - ``make p``: compile and open "main.pdf" using ~/bin/pdfreader (wrapper
#       of evince, mpdf, zathura, etc.)
#
#-------------------------------------------------------------------------------

MAIN      = main
SRCS      = *.tex
PS        = $(MAIN).ps
PDF       = $(MAIN).pdf
DVI       = $(MAIN).dvi
TARG      = $(MAIN).done

all: texnoredo cleanabit

h: all cleanabit # ps pdf

p: all openpdf cleanabit #ps pdf

texnoredo:
	pdflatex main.tex
	bibtex -min-crossrefs=1000 main
	pdflatex main.tex
	pdflatex main.tex

texnobib:
	pdflatex main.tex

$(MAIN).bbl: $(MAIN).aux
	bibtex -min-crossrefs=200 $(MAIN)
	./redo-bib.csh $(MAIN)

$(MAIN).aux: $(MAIN).tex
	latex $(MAIN)

clean:
	rm -vf *.ps  main.pdf *.dvi *.aux *.log \
	*.bbl *.blg *.out *.brf *.4*  \
	*.css *.idv *.lg *.tmp *.xref *.png *.toc

cleanabit:
	rm -vf *~ *.ps  *.aux *.log \
	*.bbl *.blg *.out *.brf *.4*  \
	*.css *.idv *.lg *.tmp *.xref *.png *.toc
