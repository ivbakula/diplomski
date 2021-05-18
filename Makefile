all: 
#	pdflatex -shell-secape --output-directory=build main.tex
	sh -c "pdflatex -shell-escape --output-directory=build main.tex"

dir:
	mkdir -p build/figures
	ln -svf build/figures

clean:
	rm -rf build
	unlink figures
