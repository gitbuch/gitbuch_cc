all: git.html git.chunked

git.txt: advanced.txt automatisierung.txt erste_schritte.txt gitdir.txt \
    github.txt grundlagen.txt installation.txt praxis.txt remote.txt \
    server.txt shell.txt vorwort.txt workflows.txt zusammenspiel.txt

git.html: git.txt
	asciidoc -a numbered -a data-uri -a toclevels=3 $<

git.chunked: git.txt
	a2x -f chunked --xsltproc-opts="--stringparam chunk.section.depth 0" $<

clean:
	rm -rf git.html git.chunked
