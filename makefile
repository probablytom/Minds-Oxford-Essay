essay:
	pdflatex essay.tex 
	bibtex   essay.aux
	pdflatex essay.tex 
	pdflatex essay.tex 
	mv essay.pdf On_Anthropomorphic_Algorithms.pdf

upload:
	make essay
	git add .
	git commit
	git push
