all: git.html

git.html: git.txt
	asciidoc -a data-uri $<
