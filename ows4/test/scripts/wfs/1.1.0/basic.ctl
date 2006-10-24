<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:wfs="http://www.opengis.net/wfs"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">
				
	<!--===========-->
	<!-- WFS TESTS -->
	<!--===========-->		

	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc1.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc2.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc2.2.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc3.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc4.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc4.2.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc4.3.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc5.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc6.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc7.1.xml"/>
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc8.1.xml"/>								
	<xi:include href="basic/wfs-1.1.0-Basic-GetCapabilities-tc9.1.xml"/>
	
	<xi:include href="basic/wfs-1.1.0-Basic-DescribeFeatureType-tc1.1.xml"/>
	
	<xi:include href="basic/basic.wfs.getfeature.1.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.2.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.3.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.4.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.5.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.6.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.7.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.8.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.9.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.10.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.11.1.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.11.2.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.11.3.xml"/>
	<xi:include href="basic/basic.wfs.getfeature.11.4.xml"/>				
	
	<!--================-->
	<!-- COMMONS TESTS -->
	<!--================-->	
		
	<xi:include href="basic/basic.commons.getcapabilities.1.1.xml"/>
	<xi:include href="basic/basic.commons.getcapabilities.1.2.xml"/>
	<xi:include href="basic/basic.commons.getcapabilities.1.3.xml"/>
	<xi:include href="basic/basic.commons.getcapabilities.2.1.xml"/>
	<xi:include href="basic/basic.commons.getcapabilities.2.2.xml"/>
	<xi:include href="basic/basic.commons.getcapabilities.2.3.xml"/>

	<xi:include href="basic/basic.commons.describefeaturetype.1.1.xml"/>
	<xi:include href="basic/basic.commons.describefeaturetype.1.2.xml"/>
	<xi:include href="basic/basic.commons.describefeaturetype.1.3.xml"/>
	<xi:include href="basic/basic.commons.describefeaturetype.2.1.xml"/>		
		
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<xi:include href="sanity-check.xml"/>		
	
	<ctl:test name="ctl:basic-main">
      <ctl:param name="wfs.GetCapabilities.document"/>
      <ctl:param name="gmlsf.profile.level"/>

		<ctl:assertion>Tests the WFS 1.1.0 basic capabilities and operations.</ctl:assertion>
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
		
			<!-- Run the tests -->
				
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="wfs:sanity-check">
				<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
			</ctl:call-test>
			
			<!-- MANDATORY -->
			
			<xsl:if test="not($wfs.GetCapabilities.get.url = '')">			
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc1.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc3.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.2">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.3">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>										
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc5.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>				
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc6.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc7.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc8.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc9.1">
					<ctl:with-param name="wfs.GetCapabilities.get.url" select="$wfs.GetCapabilities.get.url"/>
				</ctl:call-test>																
			</xsl:if>

			<xsl:if test="not($wfs.DescribeFeatureType.get.url = '')">
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-DescribeFeatureType-tc1.1">
					<ctl:with-param name="wfs.DescribeFeatureType.get.url" select="$wfs.DescribeFeatureType.get.url"/>
				</ctl:call-test>			
			
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.1">
					<ctl:with-param name="wfs.DescribeFeatureType.get.url" select="$wfs.DescribeFeatureType.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.2">
					<ctl:with-param name="wfs.DescribeFeatureType.get.url" select="$wfs.DescribeFeatureType.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.3">
					<ctl:with-param name="wfs.DescribeFeatureType.get.url" select="$wfs.DescribeFeatureType.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.2.1">
					<ctl:with-param name="wfs.DescribeFeatureType.get.url" select="$wfs.DescribeFeatureType.get.url"/>
				</ctl:call-test>
			</xsl:if>
			
			<xsl:if test="not($wfs.GetFeature.post.url = '')">							
				<ctl:call-test name="wfs:basic.wfs.getfeature.1.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.2.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.3.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.4.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.5.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.6.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.7.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.8.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.9.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.1">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>				
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.2">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.3">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.4">
					<ctl:with-param name="wfs.GetFeature.post.url" select="$wfs.GetFeature.post.url"/>
				</ctl:call-test>												
			</xsl:if>
					
			<xsl:if test="not($wfs.GetFeature.get.url = '')">							
				<ctl:call-test name="wfs:basic.wfs.getfeature.10.1">
					<ctl:with-param name="wfs.GetFeature.get.url" select="$wfs.GetFeature.get.url"/>
				</ctl:call-test>					
			</xsl:if>
						
			<!-- OPTIONAL -->
		
			<xsl:if test="not($wfs.GetCapabilities.post.url = '')">							
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc2.1">
					<ctl:with-param name="wfs.GetCapabilities.post.url" select="$wfs.GetCapabilities.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc2.2">
					<ctl:with-param name="wfs.GetCapabilities.post.url" select="$wfs.GetCapabilities.post.url"/>
				</ctl:call-test>				
			</xsl:if>		
			
			<!-- CONDITIONAL -->
			
		</ctl:code>
	</ctl:test>	
	
</ctl:package>

