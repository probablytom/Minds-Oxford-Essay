essay:
	pdflatex essay.tex 
	bibtex   essay.aux
	pdflatex essay.tex 
	pdflatex essay.tex 
	mv essay.pdf On_Anthropomorphic_Algorithms.pdf
	make wc

upload:
	make essay
	git add .
	git commit
	git push

wc:
	pdftotext On_Anthropomorphic_Algorithms.pdf
	wc -w On_Anthropomorphic_Algorithms.txt
	rm On_Anthropomorphic_Algorithms.txt
