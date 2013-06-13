
doc:	
	pdflatex --draftmode lengthconvert.dtx
	makeindex -s gind.ist lengthconvert.idx
	makeindex -s gglo.ist -o lengthconvert.gls lengthconvert.glo
	pdflatex lengthconvert.dtx
	pdflatex lengthconvert.dtx

sty:
	pdflatex lengthconvert.dtx

clean:
	rm -f  *.toc  *.out  *.log  *.ins  *.ind  *.ilg 
	rm -f  *.idx  *.hd  *.gls  *.glo  *.aux  *.txt *~

all: doc sty clean
