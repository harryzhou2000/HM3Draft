

targets=HM3Draft HM3Draft_ICCFD

flags=-synctex=1 -interaction=nonstopmode -file-line-error -recorder

all: $(addsuffix .pdf, $(targets))

elsarticle.cls: elsarticle.ins
	latex elsarticle.ins

%.pdf:  %.tex elsarticle.cls
	pdflatex $< -draftmode $(flags)
	bibtex $*
	pdflatex $< -draftmode $(flags)
	pdflatex $< $(flags)

.PHONY:clean

clean:
	rm -f elsarticle.cls
	rm -f elsarticle.log
	rm -f $(addsuffix .pdf, $(targets))
	rm -f $(addsuffix .aux, $(targets))
	rm -f $(addsuffix .blg, $(targets))
	rm -f $(addsuffix .fdb_latexmk, $(targets))
	rm -f $(addsuffix .log, $(targets))
	rm -f $(addsuffix .out, $(targets))
	rm -f $(addsuffix .synctex.gz, $(targets))
	rm -f $(addsuffix .fls, $(targets))
	rm -f $(addsuffix .bbl, $(targets))
	rm -f $(addsuffix .spl, $(targets))

	
	


	
