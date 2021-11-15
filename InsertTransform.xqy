xquery version "1.0-ml";
let $stylesheet-uri := "/stylesheet.xslt"
let $stylesheet :=
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="*">
    <xsl:element name="{{local-name()}}">
      <xsl:apply-templates select="*|node()"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="*[starts-with(local-name(),'attr_')]">
      <xsl:attribute name="{{replace(local-name(),'attr_','')}}">
        <xsl:value-of select="." />
      </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
return xdmp:document-insert($stylesheet-uri, $stylesheet)
