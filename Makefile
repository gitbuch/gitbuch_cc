default: git.chunked
all: git.chunked git.html

git.txt: advanced.txt automatisierung.txt erste_schritte.txt gitdir.txt \
    github.txt grundlagen.txt installation.txt praxis.txt remote.txt \
    server.txt shell.txt vorwort.txt workflows.txt zusammenspiel.txt

git.html: git.txt
	asciidoc -a numbered -a data-uri -a toclevels=3 $<

git.chunked: git.txt
	a2x -f chunked --xsltproc-opts="--stringparam chunk.section.depth 0 --stringparam chunker.output.indent yes" $<

clean:
	rm -rf git.html git.chunked

wipdeploy:
	 rsync -r --info=progress2 --delete --chmod=a+r git.chunked/ noam:www/plenz.com/gitbuch-wip
