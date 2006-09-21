<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:wfs="http://www.opengis.net/wfs"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">
	
	<!--===============-->
	<!-- GENERAL TESTS -->
	<!--===============-->	
		
	<xi:include href="basic/basic-general-get-1.1.1.xml"/>	
	<xi:include href="basic/basic-general-get-1.1.2A.xml"/>	
	<xi:include href="basic/basic-general-get-1.1.2B.xml"/>			
	<xi:include href="basic/basic-general-get-1.1.2C.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.11.xml"/>
	<xi:include href="basic/basic-general-post-1.1.12A.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.12B.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.14A.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.14B.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.14C.xml"/>	
	<xi:include href="basic/basic-general-post-1.1.16.xml"/>
	<xi:include href="basic/basic-general-get-1.1.17.xml"/>
	<xi:include href="basic/basic-general-get-1.1.18.xml"/>
	<xi:include href="basic/basic-general-get-1.1.19.xml"/>
	
	<xi:include href="basic/basic-commons-constraints-get-1.1A.xml"/>	
	<xi:include href="basic/basic-commons-constraints-get-1.1B.xml"/>
	<xi:include href="basic/basic-commons-constraints-get-1.1C.xml"/>	
	<xi:include href="basic/basic-commons-constraints-get-1.2A.xml"/>	
	<xi:include href="basic/basic-commons-constraints-get-1.2B.xml"/>	
	<xi:include href="basic/basic-commons-constraints-get-1.2C.xml"/>			
	<xi:include href="basic/basic-commons-constraints-get-1.8.xml"/>
	<xi:include href="basic/basic-commons-metadata-get-2.2A.xml"/>	
	<xi:include href="basic/basic-commons-metadata-get-2.2B.xml"/>	
	<xi:include href="basic/basic-commons-metadata-get-2.2C.xml"/>	
				
	<!--=====================-->
	<!-- GETCAPABILITIES TESTS -->
	<!--=====================-->		

	<xi:include href="basic/basic-getcapabilities-get-1.2.1.xml"/>
	<xi:include href="basic/basic-getcapabilities-post-1.2.2A.xml"/>
	<xi:include href="basic/basic-getcapabilities-post-1.2.2B.xml"/>

	<!--==================-->
	<!-- GETFEATURE TESTS -->
	<!--==================-->		
	
	<xi:include href="basic/basic-getfeature-post-1.4.1.1.xml"/>	
	<xi:include href="basic/basic-getfeature-post-1.4.1.2.xml"/>		
	<xi:include href="basic/basic-getfeature-post-1.4.1.3.xml"/>	
	<xi:include href="basic/basic-getfeature-post-1.4.1.4.xml"/>
	<xi:include href="basic/basic-getfeature-post-1.4.1.5.xml"/>		
	<xi:include href="basic/basic-getfeature-post-1.4.1.6.xml"/>
	<xi:include href="basic/basic-getfeature-post-1.4.2.2.xml"/>
	
	<!--===============-->
	<!-- WFS 1.0.0 TESTS -->
	<!--===============-->			
		
	<xi:include href="basic/old/basic-getcapabilities-get-1.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-2.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-3.xml"/>
	<xi:include href="basic/old/basic-getcapabilities-get-4.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-5.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-6.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-7.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-get-8.xml"/>
	<xi:include href="basic/old/basic-getcapabilities-post-1.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-2.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-3.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-4.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-5.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-6.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-7.xml"/>	
	<xi:include href="basic/old/basic-getcapabilities-post-8.xml"/>		
		
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<xi:include href="sanity-check.xml"/>		
	
	<ctl:test name="ctl:basic-main">
		<ctl:assertion>Tests the WFS 1.1.0 basic capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- Declare variables to be used in tests -->
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL">http://localhost:8080/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL">http://localhost:8080/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_FEATURE_HTTP_GET_URL">http://localhost:8080/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_FEATURE_HTTP_POST_URL">http://localhost:8080/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_POST_URL">http://localhost:8080/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL">http://localhost:8080/wfs/http</xsl:variable>	
						
			<!-- Run the tests -->
			
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="wfs:sanity-check">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			
			<!-- MANDATORY -->
			<ctl:message>Mandatory Tests:</ctl:message>
			<ctl:call-test name="wfs:basic-general-get-1.1.1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-get-1.1.2A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-get-1.1.2B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="wfs:basic-general-get-1.1.2C">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="wfs:basic-general-post-1.1.11">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-post-1.1.12A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-post-1.1.12B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="wfs:basic-general-post-1.1.14A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-post-1.1.14B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="wfs:basic-general-post-1.1.14C">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-post-1.1.16">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-get-1.1.17">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-get-1.1.18">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-general-get-1.1.19">
				<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
			</ctl:call-test>
			
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.1A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.1B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.1C">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.2A">
				<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.2B">
				<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.2C">
				<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="wfs:basic-commons-constraints-get-1.8">
				<ctl:with-param name="VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL" select="$VAR_WFS_DESCRIBE_FEATURE_TYPE_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-commons-metadata-get-2.2A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="wfs:basic-commons-metadata-get-2.2B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="wfs:basic-commons-metadata-get-2.2C">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
												
			<ctl:call-test name="wfs:basic-getcapabilities-get-1.2.1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.1">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.2">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.3">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.4">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.5">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.1.6">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getfeature-post-1.4.2.2">
				<ctl:with-param name="VAR_WFS_GET_FEATURE_HTTP_POST_URL" select="$VAR_WFS_GET_FEATURE_HTTP_POST_URL"/>
			</ctl:call-test>
									
			<!-- OPTIONAL -->
			<ctl:message>Optional Tests:</ctl:message>
			<ctl:call-test name="wfs:basic-getcapabilities-post-1.2.2A">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-1.2.2B">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
								
			<!-- WFS 1.0.0 tests converted to WFS 1.1.0 (not all working) -->																
			<!--<ctl:message>WFS 1.0.0 Tests:</ctl:message>
			<ctl:call-test name="wfs:basic-getcapabilities-get-1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-2">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-3">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-4">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-5">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-6">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-7">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-get-8">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-2">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-3">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-4">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-5">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-6">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-7">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:basic-getcapabilities-post-8">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>-->
					
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:wfs-basic-suite">
		<ctl:title>WFS 1.1.0 Basic Suite</ctl:title>
		<ctl:description>The WFS 1.1.0 basic test suite.</ctl:description>
		<ctl:starting-test>ctl:basic-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

