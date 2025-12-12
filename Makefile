# Makefile for LaTeX book compilation

# Main file name (without .tex extension)
MAIN = main

# LaTeX compiler
LATEX = pdflatex

# BibTeX compiler
BIBTEX = bibtex

# Output PDF
PDF = $(MAIN).pdf

# Default target
all: $(PDF)

# Build the PDF
$(PDF): $(MAIN).tex chapters/*.tex references.bib
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Quick build (single pass, for testing)
quick:
	$(LATEX) $(MAIN).tex

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk
	rm -f chapters/*.aux

# Clean everything including PDF
cleanall: clean
	rm -f $(PDF)

# Open the PDF (works on most Linux systems with a PDF viewer)
view: $(PDF)
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(PDF); \
	elif command -v evince > /dev/null; then \
		evince $(PDF); \
	elif command -v okular > /dev/null; then \
		okular $(PDF); \
	else \
		echo "No PDF viewer found. Please open $(PDF) manually."; \
	fi

.PHONY: all quick clean cleanall view
