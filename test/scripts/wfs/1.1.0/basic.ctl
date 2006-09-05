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
	
	<xi:include href="basic/basic-getcapabilities-get-1.xml"/>	
	<xi:include href="basic/basic-getcapabilities-get-2.xml"/>	
	<xi:include href="basic/basic-getcapabilities-get-3.xml"/>	
	<xi:include href="basic/basic-getcapabilities-post-1.xml"/>	
	<xi:include href="basic/basic-getcapabilities-post-2.xml"/>	
	<xi:include href="basic/basic-getcapabilities-post-3.xml"/>	
	
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<ctl:test name="ctl:basic-main">
		<ctl:assertion>Tests the WFS 1.1.0 basic capabilities and operations.</ctl:assertion>
		<ctl:code>
			<!-- Declare variables to be used in tests -->
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL">http://vancouver1.demo.galdosinc.com/wfs/http</xsl:variable>	
			<xsl:variable name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL">http://vancouver1.demo.galdosinc.com/wfs/http</xsl:variable>	
			
			<!-- Run the tests -->
			<ctl:call-test name="wfs:test1.1.0-basic-getcapabilities-get-1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:test1.0.0-basic-getcapabilities-get-2">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:test1.0.0-basic-getcapabilities-get-3">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:test1.0.0-basic-getcapabilities-post-1">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:test1.0.0-basic-getcapabilities-post-2">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="wfs:test1.0.0-basic-getcapabilities-post-3">
				<ctl:with-param name="VAR_WFS_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_WFS_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:wfs-basic-suite">
		<ctl:title>WFS 1.1.0 Basic Suite</ctl:title>
		<ctl:description>The WFS 1.1.0 basic test suite.</ctl:description>
		<ctl:starting-test>ctl:basic-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

