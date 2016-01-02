files=objektmodell-programm-crop\
	svn-stdlayout-crop\
	svn-nonstdlayout-crop\
	svn-branches-crop\
	git-branches-crop\
	git-dir-crop

pdfs=$(addsuffix .pdf, $(files))
pngs=$(addsuffix .png, $(files))

all: $(pdfs) $(pngs)

clean:
	-rm -fv *.pdf *.aux *.log

%.pdf : %.tex
	pdflatex $<

%-crop.pdf : %.pdf
	pdfcrop $<

%-crop.png : %-crop.pdf
	convert -density 1000 $< -flatten ../../bilder_ebook/$@
