Quelldaten für das Git-Buch
===========================

Eine gerenderte Version findet sich auf [gitbu.ch](http://gitbu.ch/pr01.html).

Pull-Requests sind willkommen; es handelt sich allerdings um ein Buch, das
wiederholt professionell lektoriert wurde. Diesen Qualitäts-Standard wollen wir
natürlich halten. Bevor Du also tiefgreifende Änderungen/Erweiterungen
vornimmst, [kontaktiere uns](mailto:kontakt@gitbu.ch), damit wir entscheiden
können, wie wir vorgehen. Fehlerkorrekturen oder kleine Updates sind natürlich
immer gerne gesehen!

Falls Du ein DocBook-Experte und/oder Webprogrammierer bist, und denkst: Das
Design könnte man ja wohl mal professionalisieren – dann gerne! Ich habe aus
den Quelldateien nur schnell eine halbwegs ansehnliche Webseite
zusammengestoppelt.

Bauen
=====

Voraussetzungen: Installiertes `asciidoc`, `dblatex` und `texlive-fonts-extra` (für PDF).

Bauen:
* `make` erstellt die HTML Version.
* `xdg-open git.chunked/pr01.html` öffnet das Ergebnis im Browser.

* `make epub` erstellt die EPUB-Version.
* `xdg-open git.epub` öffnet das EPUB.

* `make pdf` erstellt die PDF-Version.
* `xdg-open git.pdf` öffnet das PDF.

Mac OS X
--------

Zur Vorbereitung (mit [Homebrew](http://brew.sh/)):
* `brew install asciidoc xmlstarlet epubcheck`
* [xmllint fixen - nutzt dauerhaft das Homebrew Environment](https://groups.google.com/forum/#!topic/asciidoc/FC-eOwU8rYg):
 * `sudo mkdir /etc/xml`
 * `sudo ln -s /usr/local/etc/xml/catalog /etc/xml/catalog`
* [xmllint temporär fixen](https://groups.google.com/forum/#!topic/asciidoc/FC-eOwU8rYg):
 * `export XML_CATALOG_FILES=/usr/local/etc/xml/catalog`
 

Lizenz
======

Lizensiert unter der [Creative Commons Attribution-NonCommercial-ShareAlike 4.0
International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
