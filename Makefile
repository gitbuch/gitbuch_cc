default: git.chunked
all: git.chunked git.html

git.txt: advanced.txt automatisierung.txt erste_schritte.txt gitdir.txt \
    github.txt grundlagen.txt installation.txt praxis.txt remote.txt \
    server.txt shell.txt vorwort.txt workflows.txt zusammenspiel.txt
	touch $@

git.html: git.txt asciidoc.conf
	asciidoc -a numbered -a data-uri -a toclevels=3 $<

# ARE YOU OUT OF YOUR MIND? ARE YOU NOT CAPABLE OF WRITING UTTERLY
# SIMPLE XSL TEMPLATES TO ACHIEVE THIS SIMPLE THING? –– No. I’ve tried and failed.
styles/toc.html: git.chunked-prereq
	( cat styles/toc.before.html; \
	  xmllint --html --xpath '//div[@class="toc"]/dl[@class="toc"]' git.chunked/index.html; \
	  cat styles/toc.after.html ) > $@

git.chunked-prereq: git.txt styles asciidoc.conf
	rm -f styles/toc.html
	a2x -f chunked --xsl-file styles/chunked.xsl --resource styles --stylesheet=gitbuch.css git.txt

git.chunked: git.chunked-prereq styles/toc.html
	a2x -f chunked --xsl-file styles/chunked.xsl --resource styles --stylesheet=gitbuch.css git.txt

epub: git.epub

git.epub: git.txt
	a2x -fepub --epubcheck $<

pdf: git.pdf

git.pdf: git.txt styles/dblatex.sty
	a2x -fpdf --dblatex-opts "-P latex.output.revhistory=0 \
	                              -P doc.publisher.show=0 \
	                              -P latex.class.book=book \
	                              -P geometry.options=margin=3cm \
	                              -P latex.class.options=12pt \
	                              -s styles/dblatex.sty" \
	          --asciidoc-opts="-f asciidoc-pdf.conf" $<

clean:
	rm -rf git.html git.chunked style/toc.html git.epub.d git.epub git.pdf
