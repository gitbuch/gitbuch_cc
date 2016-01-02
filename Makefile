default: git.chunked
all: git.chunked git.html

git.txt: advanced.txt automatisierung.txt erste_schritte.txt gitdir.txt \
    github.txt grundlagen.txt installation.txt praxis.txt remote.txt \
    server.txt shell.txt vorwort.txt workflows.txt zusammenspiel.txt

git.html: git.txt asciidoc.conf
	asciidoc -a numbered -a data-uri -a toclevels=3 $<

git.chunked: git.txt styles asciidoc.conf
	a2x -f chunked --xsl-file styles/chunked.xsl --resource styles --stylesheet=gitbuch.css $<

clean:
	rm -rf git.html git.chunked

wipdeploy:
	 rsync -r --info=progress2 --delete --chmod=a+r git.chunked/ noam:www/plenz.com/gitbuch-wip
