LATEX = /usr/bin/latex
PDFLATEX = /usr/bin/pdflatex
BIBTEX = /usr/bin/bibtex


TARGET=compiler
TRASH = *.aux *.log *.toc *~ *.blg *.bbl *.lof *.lot
RM = /bin/rm
RMFLAGS = -f


pdf:
	$(PDFLATEX) $(TARGET)
	$(BIBTEX) $(TARGET)
	$(PDFLATEX) $(TARGET)
	$(PDFLATEX) $(TARGET)
	$(PDFLATEX) $(TARGET)

clean:
	$(RM) $(RMFLAGS) $(TRASH)

clean-all: clean
	$(RM) $(TARGET).pdf

