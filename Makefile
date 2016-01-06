default: git.chunked
all: git.chunked git.html

git.txt: advanced.txt automatisierung.txt erste_schritte.txt gitdir.txt \
    github.txt grundlagen.txt installation.txt praxis.txt remote.txt \
    server.txt shell.txt vorwort.txt workflows.txt zusammenspiel.txt

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

epub:
	a2x -fepub --epubcheck git.txt

clean:
	rm -rf git.html git.chunked style/toc.html git.epub.d git.epub
