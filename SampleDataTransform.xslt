<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="LookupValue|LookupCode"/>

  <xsl:template match="Lookup">
    <xsl:element name="LookupValue">
      <xsl:attribute name="code">
        <xsl:value-of select="Code" />
      </xsl:attribute>    
      <xsl:value-of select="Value" />
    </xsl:element>
  </xsl:template>

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
