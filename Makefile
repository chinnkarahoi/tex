.PHONY: ubuntu clean all
file=intro_to_complex_network
all: ${file}.pdf
${file}.pdf: ${file}.tex
	xelatex -interaction=nonstopmode $<
	biber $(basename $<)
	xelatex -interaction=nonstopmode $<

open:
	DISPLAY=:0 xdg-open ${file}.pdf

clean:
	- rm -f ${file}.aux ${file}.dvi ${file}.log ${file}.toc ${file}.pdf ${file}.log ${file}.pdf ${file}.bbl ${file}.blg ${file}.out ${file}.bcf ${file}.nav ${file}.html ${file}.xml ${file}.snm ${file}.toc ${file}.run.xml
ubuntu:
	sudo apt install texlive-xetex texlive-full texlive-lang-chinese
