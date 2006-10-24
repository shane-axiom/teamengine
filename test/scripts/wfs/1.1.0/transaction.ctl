<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://cite.opengeospatial.org/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:wfs="http://www.opengis.net/wfs"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">
		
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<ctl:test name="ctl:transaction-main">
      <ctl:param name="wfs.GetCapabilities.document"/>
      <ctl:param name="gmlsf.profile.level"/>

		<ctl:assertion>Tests the WFS 1.1.0 transaction capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- Discover endpoints to be used in tests -->
			<xsl:variable name="wfs.GetCapabilities.get.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>
			<xsl:variable name="wfs.GetCapabilities.post.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="wfs.DescribeFeatureType.get.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeFeatureType']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="wfs.DescribeFeatureType.post.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeFeatureType']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="wfs.GetFeature.get.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetFeature']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="wfs.GetFeature.post.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetFeature']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable> 		
			<xsl:variable name="wfs.Transaction.get.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='Transaction']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable> 	
			<xsl:variable name="wfs.Transaction.post.url">
				<xsl:value-of select="$wfs.GetCapabilities.document//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='Transaction']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable> 	
		
			<!-- Run the tests -->
				
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="wfs:sanity-check">
				<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
			</ctl:call-test>
			
			<!-- Run the basic tests before the additional transaction tests -->
            <ctl:call-test name="ctl:basic-main">
				<ctl:with-param name="wfs.GetCapabilities.document" select="$wfs.GetCapabilities.document"/>														
				<ctl:with-param name="gmlsf.profile.level" select="$gmlsf.profile.level"/>	
            </ctl:call-test>			
			
			<!-- MANDATORY -->
			
			<!-- OPTIONAL -->
			
			<!-- CONDITIONAL -->
			
		</ctl:code>
	</ctl:test>	
	
</ctl:package>

