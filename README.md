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
zusammengestoppelt. Auch sind gegebenenfalls eine PDF- oder EPUB-Version
interessant; falls Du dies übernehmen willst, gerne!

Bauen
=====

Mac OS X
--------

Zur Vorbereitung (mit [Homebrew](http://brew.sh/)):
* `brew install asciidoc xmlstarlet`
* [xmllint fixen](https://groups.google.com/forum/#!topic/asciidoc/FC-eOwU8rYg):
 * `sudo mkdir /etc/xml`
 * `sudo ln -s /usr/local/etc/xml/catalog /etc/xml/catalog`

Bauen:
* `make` erstellt die HTML Version
* `open git.chunked/index.html` öffnet das Ergebnis im Browser.

Lizenz
======

Lizensiert unter der [Creative Commons Attribution-NonCommercial-ShareAlike 4.0
International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
