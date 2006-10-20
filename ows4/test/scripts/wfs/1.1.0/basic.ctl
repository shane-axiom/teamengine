<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
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
		<ctl:assertion>Tests the WFS 1.1.0 basic capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- GetCapabilities to determine the proper URLs for the other operations-->
			
			<!--<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL">http://nautilus.baruch.sc.edu/wms/in_situ</xsl:variable>-->
			<!--<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL">http://geo.openplans.org:8080/geoserver/wfs/GetCapabilities</xsl:variable>-->
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL">http://localhost:8080/wfs/http</xsl:variable>
			
			<xsl:variable name="getCapabilitiesDocument">
				<ctl:request>
					<ctl:url>
						<xsl:value-of select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
					</ctl:url>
					<ctl:method>get</ctl:method>
					<ctl:param name="service">WFS</ctl:param>
					<ctl:param name="version">1.1.0</ctl:param>
					<ctl:param name="request">GetCapabilities</ctl:param>
				</ctl:request>
			</xsl:variable>		
			
			<xsl:if test="not($getCapabilitiesDocument//wfs:WFS_Capabilities)">
				<ctl:message>GetCapabilities using HTTP-GET not working!</ctl:message>	
				<ctl:fail/>
			</xsl:if>				
			
			<!-- Declare variables to be used in tests -->
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeFeatureType']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeFeatureType']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_FEATURE_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetFeature']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_FEATURE_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//wfs:WFS_Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetFeature']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>
						
			<!-- Run the tests -->
				
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="wfs:sanity-check">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			
			<!-- MANDATORY -->
			
			<xsl:if test="not($VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL = '')">			
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc1.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc3.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.2">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc4.3">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>										
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc5.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>				
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc6.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc7.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc8.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc9.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>																
			</xsl:if>

			<xsl:if test="not($VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL = '')">
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-DescribeFeatureType-tc1.1">
					<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
				</ctl:call-test>			
			
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.1">
					<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.2">
					<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.1.3">
					<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.commons.describefeaturetype.2.1">
					<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
				</ctl:call-test>
			</xsl:if>
			
			<xsl:if test="not($VAR_WFS_GET_FEATURE_HTTP_POST_URL = '')">							
				<ctl:call-test name="wfs:basic.wfs.getfeature.1.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.2.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.3.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.4.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.5.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.6.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.7.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.8.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.9.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>				
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.2">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.3">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:basic.wfs.getfeature.11.4">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
				</ctl:call-test>												
			</xsl:if>
					
			<xsl:if test="not($VAR_WFS_GET_FEATURE_HTTP_GET_URL = '')">							
				<ctl:call-test name="wfs:basic.wfs.getfeature.10.1">
					<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_GET_URL" select="$VAR_WFS_GET_FEATURE_HTTP_GET_URL"/>
				</ctl:call-test>					
			</xsl:if>
						
			<!-- OPTIONAL -->
		
			<xsl:if test="not($VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL = '')">							
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc2.1">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="wfs:wfs-1.1.0-Basic-GetCapabilities-tc2.2">
					<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
				</ctl:call-test>				
			</xsl:if>		
			
			<!-- CONDITIONAL -->
			
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:wfs-basic-suite">
		<ctl:title>WFS 1.1.0 Basic Suite</ctl:title>
		<ctl:description>The WFS 1.1.0 basic test suite.</ctl:description>
		<ctl:starting-test>ctl:basic-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

