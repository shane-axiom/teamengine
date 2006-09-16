<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">
	
	<!--===============-->
	<!-- GENERAL TESTS -->
	<!--===============-->	
				
	<!--=====================-->
	<!-- GETCAPABILITIES TESTS -->
	<!--=====================-->		

	<xi:include href="discovery/discovery-getcapabilities-get-2.1.2.xml"/>

	<!--==================-->
	<!-- GETFEATURE TESTS -->
	<!--==================-->		
		
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<xi:include href="sanity-check.xml"/>		
	
	<ctl:test name="ctl:discovery-main">
		<ctl:assertion>Tests the CSW 2.0.1 discovery capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- Declare variables to be used in tests -->
			<xsl:variable name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORD_HTTP_GET_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORD_HTTP_POST_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
									
			<!-- Run the tests -->
			
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="csw:sanity-check">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				<ctl:with-param name="VAR_CSW_GET_RECORD_HTTP_POST_URL" select="$VAR_CSW_GET_RECORD_HTTP_POST_URL"/>
			</ctl:call-test>
			
			<!-- MANDATORY -->
			<ctl:message>Mandatory Tests:</ctl:message>
			<ctl:call-test name="csw:discovery-getcapabilities-get-2.1.2">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			
			<!-- OPTIONAL -->
						
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:csw-discovery-suite">
		<ctl:title>CSW 2.0.1 Discovery Suite</ctl:title>
		<ctl:description>The CSW 2.0.1 discovery test suite.</ctl:description>
		<ctl:starting-test>ctl:discovery-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

