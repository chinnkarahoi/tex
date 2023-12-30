.PHONY: ubuntu clean all
file=1
all: ${file}.pdf
${file}.pdf: ${file}.tex
	xelatex -interaction=nonstopmode $<
	biber $(basename $<)
	xelatex -interaction=nonstopmode $<
	DISPLAY=:0 xdg-open $@

clean:
	- rm -f ${file}.aux ${file}.dvi ${file}.log ${file}.toc ${file}.pdf ${file}.log ${file}.pdf ${file}.bbl ${file}.blg ${file}.out ${file}.bcf ${file}.nav ${file}.html ${file}.xml ${file}.snm ${file}.toc ${file}.run.xml
ubuntu:
	sudo apt install texlive-xetex texlive-full texlive-lang-chinese
