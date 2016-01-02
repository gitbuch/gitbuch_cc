<!--
  Generates chunked XHTML documents from DocBook XML source using DocBook XSL
  stylesheets.

  NOTE: The URL reference to the current DocBook XSL stylesheets is
  rewritten to point to the copy on the local disk drive by the XML catalog
  rewrite directives so it doesn't need to go out to the Internet for the
  stylesheets. This means you don't need to edit the <xsl:import> elements on
  a machine by machine basis.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/chunk.xsl"/>
<xsl:import href="common.xsl"/>
<xsl:param name="navig.graphics.path">images/icons/</xsl:param>
<xsl:param name="admon.graphics.path">images/icons/</xsl:param>
<xsl:param name="callout.graphics.path" select="'images/icons/callouts/'"/>

<xsl:param name="chunk.section.depth" select="0"/>
<xsl:param name="chunker.output.indent">yes</xsl:param>
<xsl:param name="toc.section.depth">1</xsl:param>

<xsl:template name="user.header.navigation">
    <xsl:copy-of select="document('toc.html')"></xsl:copy-of>
</xsl:template>
<xsl:template name="user.footer.navigation">
    <div class="cc-license">
    <hr />
    <p>
    <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />Lizensiert unter der <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
    </p>
    </div>
</xsl:template>
</xsl:stylesheet>
