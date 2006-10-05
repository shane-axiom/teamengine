<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--====================-->
	<!-- OWS COMMONS TESTS -->
	<!--====================-->	
	
	<xi:include href="discovery/discovery.commons.describerecord.1.1.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.1.2.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.1.3.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.2.1.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.2.2.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.2.3.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.2.4.xml"/>
	<xi:include href="discovery/discovery.commons.describerecord.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.1.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.1.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.1.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.10.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.10.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.11.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.11.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.12.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.12.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.12.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.12.4.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.13.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.14.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.2.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.2.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.2.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.2.4.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.4.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.5.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.5.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.6.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.6.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.6.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.7.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.7.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.8.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.8.2.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.8.3.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.8.4.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.8.5.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.9.1.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.9.2.xml"/>
		
	<!--===========-->
	<!-- CSW TESTS -->
	<!--===========-->		

	<xi:include href="discovery/discovery.csw.describerecord.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.describerecord.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.1.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.2.2.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.2.3.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.3.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.4.xml"/>
	<xi:include href="discovery/discovery.csw.getdomain.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getdomain.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.4.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.10.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.2.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.2.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.4.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.5.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.6.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.6.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.6.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.7.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.7.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.7.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.7.4.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.8.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.9.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.1.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.1.2.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.2.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.2.2.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.3.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.3.2.xml"/>		
	<xi:include href="discovery/discovery.filter.getrecords.4.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.4.2.xml"/>	
	<xi:include href="discovery/discovery.filter.getrecords.5.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.6.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.7.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.7.2.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.8.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.9.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.9.2.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.10.1.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.10.2.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.10.3.xml"/>		
	<xi:include href="discovery/discovery.filter.getrecords.11.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.12.xml"/>
				
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<xi:include href="sanity-check.xml"/>		
	
	<ctl:test name="ctl:discovery-main">
		<ctl:assertion>Tests the CSW 2.0.1 discovery capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- GetCapabilities to determine the proper URLs for the other operations-->
			<!--<xsl:variable name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL">http://geobrain.laits.gmu.edu:8099/LAITSCSW2/discovery</xsl:variable>-->
			<xsl:variable name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL">http://geonetwork.mysdi.org:8081/geonetwork/srv/en/csw</xsl:variable>
			<xsl:variable name="getCapabilitiesDocument">
				<ctl:request>
					<ctl:url>
						<xsl:value-of select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
					</ctl:url>
					<ctl:method>get</ctl:method>
					<ctl:param name="service">http://www.opengis.net/cat/csw</ctl:param>
					<ctl:param name="version">2.0.1</ctl:param>
					<ctl:param name="request">GetCapabilities</ctl:param>
				</ctl:request>
			</xsl:variable>		
			
			<xsl:if test="not($getCapabilitiesDocument//csw:Capabilities)">
				<ctl:message>GetCapabilities using HTTP-GET not working!</ctl:message>	
				<ctl:fail/>
			</xsl:if>				
			
			<!-- Declare variables to be used in tests -->
			<xsl:variable name="VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORDS_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORDS_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>
			<xsl:variable name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_RECORD_BY_ID_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_DOMAIN_HTTP_GET_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetDomain']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="VAR_CSW_GET_DOMAIN_HTTP_POST_URL">
				<xsl:value-of select="$getCapabilitiesDocument//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetDomain']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>								
				
			<!-- Run the tests -->
			
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="csw:sanity-check">
				<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
			</ctl:call-test>

			<!-- MANDATORY -->
			
			<xsl:if test="not($VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL = '')">
				<ctl:call-test name="csw:discovery.commons.describerecord.1.1">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.1.2">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.1.3">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.3">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.describerecord.1.2">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_GET_URL"/>
				</ctl:call-test>			
			</xsl:if>	
						
			<xsl:if test="not($VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL = '')">
				<ctl:call-test name="csw:discovery.commons.describerecord.2.1">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.2">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.3">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.4">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.describerecord.1.1">
					<ctl:with-param name="VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL" select="$VAR_CSW_DESCRIBE_RECORD_HTTP_POST_URL"/>
				</ctl:call-test>				
			</xsl:if>							
						
			<xsl:if test="not($VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL = '')">
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.10.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.10.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.11.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.11.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.4">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.13">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.14">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.4">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.4">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.5.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.5.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.7.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.7.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.4">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.5">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.9.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.9.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.2.1">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.2.2">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.4">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_GET_URL"/>
				</ctl:call-test>			
			</xsl:if>
			
			<xsl:if test="not($VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL = '')">
				<ctl:call-test name="csw:discovery.commons.getcapabilities.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.2.3">
					<ctl:with-param name="VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL" select="$VAR_CSW_GET_CAPABILITIES_HTTP_POST_URL"/>
				</ctl:call-test>
			</xsl:if>

			<xsl:if test="not($VAR_CSW_GET_DOMAIN_HTTP_POST_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getdomain.1.1">
					<ctl:with-param name="VAR_CSW_GET_DOMAIN_HTTP_POST_URL" select="$VAR_CSW_GET_DOMAIN_HTTP_POST_URL"/>
				</ctl:call-test>
			</xsl:if>

			<xsl:if test="not($VAR_CSW_GET_DOMAIN_HTTP_GET_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getdomain.1.2">
					<ctl:with-param name="VAR_CSW_GET_DOMAIN_HTTP_GET_URL" select="$VAR_CSW_GET_DOMAIN_HTTP_GET_URL"/>
				</ctl:call-test>
			</xsl:if>
						
			<xsl:if test="not($VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.1.1">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.1">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.2">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.3">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.3">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.4">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_GET_URL"/>
				</ctl:call-test>
			</xsl:if>
			
			<xsl:if test="not($VAR_CSW_GET_RECORD_BY_ID_HTTP_POST_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.1.2">
					<ctl:with-param name="VAR_CSW_GET_RECORD_BY_ID_HTTP_POST_URL" select="$VAR_CSW_GET_RECORD_BY_ID_HTTP_POST_URL"/>
				</ctl:call-test>
			</xsl:if>
							
			<xsl:if test="not($VAR_CSW_GET_RECORDS_HTTP_POST_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getrecords.1.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>			
				<ctl:call-test name="csw:discovery.csw.getrecords.2.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.2.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.2.3">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.3">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.4">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.5">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.3">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.3">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.4">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.8">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.9">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>	
				<ctl:call-test name="csw:discovery.csw.getrecords.10">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.1.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.1.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.2.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.2.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.3.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.3.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.4.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.4.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.5">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.6">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.7.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.7.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.8">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.9.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.9.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>							
				<ctl:call-test name="csw:discovery.filter.getrecords.10.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.10.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.10.3">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.11">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.12">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_POST_URL" select="$VAR_CSW_GET_RECORDS_HTTP_POST_URL"/>
				</ctl:call-test>						
			</xsl:if>

			<xsl:if test="not($VAR_CSW_GET_RECORDS_HTTP_GET_URL = '')">
				<ctl:call-test name="csw:discovery.csw.getrecords.1.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_GET_URL" select="$VAR_CSW_GET_RECORDS_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.1">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_GET_URL" select="$VAR_CSW_GET_RECORDS_HTTP_GET_URL"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.2">
					<ctl:with-param name="VAR_CSW_GET_RECORDS_HTTP_GET_URL" select="$VAR_CSW_GET_RECORDS_HTTP_GET_URL"/>
				</ctl:call-test>
			</xsl:if>

			<!-- OPTIONAL -->
			
			<!-- CONDITIONAL -->
			
		</ctl:code>
	</ctl:test>	
	
	<ctl:suite name="ctl:csw-discovery-suite">
		<ctl:title>CSW 2.0.1 Discovery Suite</ctl:title>
		<ctl:description>The CSW 2.0.1 discovery test suite.</ctl:description>
		<ctl:starting-test>ctl:discovery-main</ctl:starting-test>
	</ctl:suite>
</ctl:package>

