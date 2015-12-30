all: git.html

git.html: git.txt
	asciidoc -a numbered -a data-uri -a toclevels=3 $<
