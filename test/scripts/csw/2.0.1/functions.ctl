<?xml version="1.0" encoding="UTF-8"?>
<ctl:package
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:ows="http://www.opengis.net/ows">

	<!-- Sample usage:
    <xsl:variable name="expression">//csw:Capabilities</xsl:variable>
		<ctl:call-test name="ctl:assert-xpath">
		<ctl:with-param name="expr" select="$expression"/>
		<ctl:with-param name="doc" select="$cap-doc"/>
	</ctl:call-test>
    -->
	<ctl:test name="ctl:assert-xpath">
		<ctl:param name="expr">An XPath expression</ctl:param>
		<ctl:param name="doc">An XML document</ctl:param>
		<ctl:assertion>
        Evaluates the given XPath expression against the input document and 
        returns a boolean result according to the XPath specification (see 
        http://www.w3.org/TR/xpath#section-Boolean-Functions).
        </ctl:assertion>
		<ctl:code>
			<xsl:for-each select="$doc">
				<xsl:choose>
					<xsl:when test="saxon:evaluate($expr)"/>
					<xsl:otherwise>
						<ctl:message>The expression '<xsl:value-of select="$expr"/>' is false.</ctl:message>
						<ctl:fail/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</ctl:code>
	</ctl:test>
	
   <ctl:function name="ctl:version-as-integer">
      <ctl:param name="version-string">Version String</ctl:param>
      <ctl:description>Gets the integer value of a version number</ctl:description>
      <ctl:code>
         <xsl:variable name="major" select="substring-before($version-string, '.')"/>
         <xsl:variable name="minor" select="substring-before(substring-after($version-string, '.'), '.')"/>
         <xsl:variable name="patch" select="substring-after(substring-after($version-string, '.'), '.')"/>
         <xsl-value-of select="$major * 10000 + $minor * 100 + $patch"/>
      </ctl:code>
   </ctl:function>
	
</ctl:package>