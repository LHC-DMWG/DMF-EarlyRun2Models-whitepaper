
tex_source := $(wildcard *.tex) $(wildcard tex/*.tex)
graphics_mp := $(subst feynmp.mp,,$(wildcard *.mp))
graphics_mp1 := $(patsubst %.mp,%.1,$(graphics_mp))

doc.pdf: pass1 $(graphics_mp1) $(graphics_mp)
	pdflatex doc.tex
	pdflatex doc.tex

pass1: clean $(tex_source)
	pdflatex doc.tex
	bibtex doc

mp: doc.pdf cleanMP 
	pdflatex doc.tex
	pdflatex doc.tex

view: doc.pdf
	if [ `uname` = "Darwin" ]; then open doc.pdf; elif [ `uname` = "Linux" ]; then if command -v okular; then okular doc.pdf; elif command -v acroread; then acroread doc.pdf; fi; fi

#contributors.tex: members-lhc-dmf-contributors.csv contributors.pl
#	echo "% this file auto-generated by contributors.pl" > contributors.tex
#	perl contributors.pl >> contributors.tex

cleanMP: $(wildcard *.mp)
	rm -f `ls -1 *.mp > /dev/null 2>&1 | sed 's/\.mp$\/\*/'`

clean: cleanMP
	rm -f doc.aux doc.blg doc.log doc.out doc.bbl doc.toc
	rm -f doc-diff.aux doc-diff.blg doc-diff.log doc-diff.out doc-diff.bbl doc-diff.toc
	rm -f *~ tex/*~
	rm -f doc.pdf doc-diff.pdf doc-diff.tex

# diff with svn+ssh://svn.cern.ch/reps/LHCDMF/tags/v20150515_first_internal_circulation
diff20150515:
#   note: if svn-multi is being used, pdflatex will give messages
#         about the property macros during each run. just hit enter
#         each time and keep going. the use of 'nonstopmode' below
#         will ignore these messages (and all other errors)
	./latexdiff-vc --svn --flatten=yes -r 194 doc.tex
#   ./latexdiff-vc --git -r c656bee807d9afaa020847256802d2dd544eb95f --flatten=yes doc.tex
#	./latexdiff-vc --git -r c656bee807d9afaa020847256802d2dd544eb95f --only-changes --dir=changes-diff doc.tex
	pdflatex --interaction=nonstopmode doc-diff.tex; bibtex doc-diff; pdflatex --interaction=nonstopmode doc-diff.tex; pdflatex --interaction=nonstopmode doc-diff.tex
#	cd changes-diff; pdflatex doc.tex; bibtex doc; pdflatex doc.tex; pdflatex doc.tex; cd ..

