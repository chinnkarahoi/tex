.PHONY: ubuntu clean all
file=main
all: ${file}.pdf
${file}.pdf: ${file}.tex
	xelatex -interaction=nonstopmode -no-pdf $<
	biber $(basename $<)
	xelatex -interaction=nonstopmode $<

open:
	DISPLAY=:0 xdg-open ${file}.pdf

clean:
	- rm -f ${file}.aux ${file}.dvi ${file}.log ${file}.toc ${file}.pdf
	- rm -f ${file}.log ${file}.pdf ${file}.bbl ${file}.blg ${file}.out
	- rm -f ${file}.bcf ${file}.nav ${file}.html ${file}.xml ${file}.snm
	- rm -f ${file}.toc ${file}.run.xml ${file}.xdv
