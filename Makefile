RULESCONFIG ?= example
PDFS = rules.$(RULESCONFIG).pdf\
       ref_checklist.$(RULESCONFIG).pdf

all: $(PDFS)

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

%.$(RULESCONFIG).tex: content/preamble.tex content/%.tex config/$(RULESCONFIG).config.tex
	echo "\\include{content/preamble}" > $@
	echo "\\include{config/$(RULESCONFIG).config}" >> $@
	echo "\\include{content/$*}" >> $@

.PHONY: clean
clean:
	-rm *.aux *.log *.out *.tex
	-rm */*.aux
