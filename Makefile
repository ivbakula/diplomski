# kad builda reference, kompajliraj još jednom
all: ref 
	sh -c "pdflatex -shell-escape --output-directory=build main.tex"
	# još jedamput zbog: Warning page breaks have changed, rerun pdflatex 
	sh -c "pdflatex -shell-escape --output-directory=build main.tex"

# za reference
ref: dir
	sh -c "pdflatex -shell-escape --output-directory=build main.tex"
	biber build/main.bcf
dir:
	mkdir -p build/figures
	ln -svf build/figures

clean:
	rm figures
	rm -rf build
