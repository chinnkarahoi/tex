.PHONY: ubuntu clean

1.pdf: 1.tex
	xelatex -interaction=nonstopmode $<
	biber $(basename $<)
	xelatex -interaction=nonstopmode $< && DISPLAY=:0 xdg-open $@

clean:
	- rm *.aux *.dvi *.log *.toc *.pdf
ubuntu:
	sudo apt install texlive-xetex texlive-full texlive-lang-chinese
