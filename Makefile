PROJECT=thesis

pdf:
	latexmk -pdf ${PROJECT}.tex

clean:
	latexmk -C
	rm -fvr *.bbl *.brf *.synctex.gz *.backup
	find . -type f -name '*.*~' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.bakcup' -delete

compress: pdf 
	./shrinkpdf.sh ${PROJECT}.pdf ${PROJECT}_compressed.pdf 300
	ls ${PROJECT}*.pdf -hl
