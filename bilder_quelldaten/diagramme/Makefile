DIAS = branch-model clone commit developer-public fetch ff-nachher ff-vorher \
    github-workflow graph graph-mit-refs index merge-base-commit merge-nachher \
    objekte objekte-zusammenhang patches-per-mail pull pull_rebase push \
    rebase-nachher rebase-onto-nachher rebase-onto-vorher rebase-vorher \
    relative-refs sha struktur svn_dcommit svn_rebase tags zentral

all: $(addsuffix .png,$(DIAS))

%.png: %.dia
	dia $< -s 2000x -e ../../bilder_ebook/$@
	./remap-sw $<
