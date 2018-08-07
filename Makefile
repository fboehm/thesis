SOURCES=index.Rmd
OUTFILE=_book/index.html


all: $(SOURCES) $(OUTFILE) 

$(OUTFILE): $(SOURCES)
	Rscript -e 'bookdown::render_book("$<", output_format = "all")'
