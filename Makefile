RULESCONFIG ?= example
PDFS = rules.$(RULESCONFIG).pdf

all: $(PDFS)

clean:
	rm *.aux *.log *.out *.tex
	rm */*.aux

%.pdf: %.tex
	pdflatex $<

%.$(RULESCONFIG).tex: content/%.tex config/$(RULESCONFIG).config.tex
	echo "\\include{content/preamble}" > $@
	echo "\\include{config/$(RULESCONFIG).config}" >> $@
	echo "\\include{content/$*}" >> $@

.PRECIOUS: %.$(RULESCONFIG).tex
