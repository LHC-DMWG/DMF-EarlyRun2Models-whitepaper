
pdf: *.tex contributors.tex  
	pdflatex summary.tex
	bibtex summary
	pdflatex summary.tex
	pdflatex summary.tex

view: pdf
	if [ `uname` = "Darwin" ]; then open summary.pdf; elif [ `uname` = "Linux" ]; then if command -v okular; then okular summary.pdf; elif command -v acroread; then acroread summary.pdf; fi; fi

contributors.tex: members-lhc-dmf-contributors.csv contributors.pl
	echo "% this file auto-generated by contributors.pl" > contributors.tex
	perl contributors.pl >> contributors.tex

clean:
	rm -f summary.aux summary.blg summary.log summary.out
	rm -f *~ tex/*~
	rm -f summary.pdf 
