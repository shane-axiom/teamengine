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

	<xi:include href="discovery/discovery-commons-constraints-get-1.1A.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-get-1.1B.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-get-1.1C.xml"/>				
	<xi:include href="discovery/discovery-commons-constraints-get-1.2A.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-get-1.2B.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-get-1.2C.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-post-1.3A.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-post-1.3B.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-post-1.3C.xml"/>	
	<xi:include href="discovery/discovery-commons-constraints-post-1.3D.xml"/>
	<xi:include href="discovery/discovery-commons-constraints-get-1.8.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.1.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.2A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.2B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.2C.xml"/>	
	<xi:include href="discovery/discovery-commons-metadata-post-2.3.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.4.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.5A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.5B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.6A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.6B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.6C.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.7A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.7B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.8A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.8B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.8C.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.8D.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.8E.xml"/>	
	<xi:include href="discovery/discovery-commons-metadata-get-2.9A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.9B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.10A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.10B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.11A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.11B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.12A.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.12B.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.12C.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.12D.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.13.xml"/>
	<xi:include href="discovery/discovery-commons-metadata-get-2.14.xml"/>
	
	<xi:include href="discovery/discovery-general-get-1.4.xml"/>	
								
	<!--=====================-->
	<!-- GETCAPABILITIES TESTS -->
	<!--=====================-->		

	<xi:include href="discovery/discovery-getcapabilities-get-2.1.2.xml"/>

	<!--=================-->
	<!-- GETRECORD TESTS -->
	<!--=================-->		
		
	<xi:include href="discovery/discovery-getrecords-post-2.4.1.xml"/>	
	<xi:include href="discovery/discovery-getrecords-post-2.4.2.xml"/>	
	<xi:include href="discovery/discovery-getrecords-post-2.4.3.xml"/>	
	<xi:include href="discovery/discovery-getrecords-post-2.4.14.xml"/>		
	
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
			<xsl:variable name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORDS_HTTP_GET_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORDS_HTTP_POST_URL">http://vancouver1.demo.galdosinc.com/csw/http</xsl:variable>	
									
			<!-- Run the tests -->
			
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="csw:sanity-check">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>
			
			<!-- MANDATORY -->
			<ctl:message>Mandatory Tests:</ctl:message>
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.1A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.1B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.1C">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.2A">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.2B">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.2C">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
			</ctl:call-test>				
			<ctl:call-test name="csw:discovery-commons-constraints-post-1.3A">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="csw:discovery-commons-constraints-post-1.3B">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="csw:discovery-commons-constraints-post-1.3C">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
			</ctl:call-test>			
			<ctl:call-test name="csw:discovery-commons-constraints-post-1.3D">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
			</ctl:call-test>					
			<ctl:call-test name="csw:discovery-commons-constraints-get-1.8">
				<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.1">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.2A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.2B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.2C">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>
			<ctl:call-test name="csw:discovery-commons-metadata-post-2.3">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL"/>
			</ctl:call-test>							
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.4">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.5A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.5B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.7A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.7B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.9A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.9B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.11A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.11B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.12A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.12B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>				
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.12C">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.12D">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>							
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.13">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.14">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	

			<ctl:call-test name="csw:discovery-general-get-1.4">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
																							
			<ctl:call-test name="csw:discovery-getcapabilities-get-2.1.2">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			
			<ctl:call-test name="csw:discovery-getrecords-post-2.4.1">
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>					
			<ctl:call-test name="csw:discovery-getrecords-post-2.4.2">
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-getrecords-post-2.4.3">
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-getrecords-post-2.4.14">
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>		
						
			<!-- OPTIONAL -->
						
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.6A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>					
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.6B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.6C">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>							
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.8A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>					
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.8B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.8C">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>						
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.8D">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.8E">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>		
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.10A">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
			<ctl:call-test name="csw:discovery-commons-metadata-get-2.10B">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
			</ctl:call-test>	
									
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:csw-discovery-suite">
		<ctl:title>CSW 2.0.1 Discovery Suite</ctl:title>
		<ctl:description>The CSW 2.0.1 discovery test suite.</ctl:description>
		<ctl:starting-test>ctl:discovery-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

