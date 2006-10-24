<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:dc="http://purl.org/dc/elements/1.1/" 
 xmlns:dct="http://purl.org/dc/terms/" 
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--================-->
	<!-- TEST FUNCTIONS -->
	<!--================-->

	<!-- General XPath evaluator (uses Saxon 8.0), i.e.: -->
	<!--<xsl:variable name="expression">//wfs:WFS_Capabilities</xsl:variable>
		<ctl:call-test name="ctl:assert-xpath">
		<ctl:with-param name="expr" select="$expression"/>
		<ctl:with-param name="doc" select="$cap-doc"/>
	</ctl:call-test>-->
	<ctl:test name="ctl:assert-xpath">
		<ctl:param name="expr">An XPath expression.</ctl:param>
		<ctl:param name="doc">An XML document.</ctl:param>
		<ctl:assertion>Test that the given document contains the given xpath assertion.</ctl:assertion>
		<ctl:code>
			<xsl:for-each select="$doc">
				<xsl:choose>
					<xsl:when test="saxon:evaluate($expr)"/>
					<xsl:otherwise>
						<ctl:message>The expression '<xsl:value-of select="$expr"/>' failed.</ctl:message>
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
         <xsl:variable name="rev" select="substring-after(substring-after($version-string, '.'), '.')"/>
         <xsl-value-of select="$major * 10000 + $minor * 100 + $rev"/>
      </ctl:code>
   </ctl:function>	
	
</ctl:package>