<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--TEMPORARY TESTS-->
	<xi:include href="discovery/test.getrecords.1.xml"/>

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
	<xi:include href="discovery/discovery.commons.getcapabilities.12.5.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.13.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.14.xml"/>
	<xi:include href="discovery/discovery.commons.getcapabilities.15.xml"/>
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
	<xi:include href="discovery/discovery.commons.getrecordbyid.1.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.1.1.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.1.2.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.1.3.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.1.4.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.1.5.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.2.1.xml"/>
	<xi:include href="discovery/discovery.commons.getrecords.2.2.xml"/>	
	<xi:include href="discovery/discovery.commons.transaction.1.xml"/>
			
	<!--===========-->
	<!-- CSW TESTS -->
	<!--===========-->		

	<xi:include href="discovery/discovery.csw.describerecord.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.describerecord.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.describerecord.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.describerecord.2.2.xml"/>	
	<xi:include href="discovery/discovery.csw.describerecord.3.xml"/>	
	<xi:include href="discovery/discovery.csw.describerecord.4.1.xml"/>
	<xi:include href="discovery/discovery.csw.describerecord.4.2.xml"/>		
	<xi:include href="discovery/discovery.csw.describerecord.5.xml"/>		
	<xi:include href="discovery/discovery.csw.describerecord.6.xml"/>		
	<xi:include href="discovery/discovery.csw.getcapabilities.1.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.2.2.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.3.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.4.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.5.xml"/>
	<xi:include href="discovery/discovery.csw.getcapabilities.6.xml"/>	
	<xi:include href="discovery/discovery.csw.getdomain.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getdomain.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getdomain.2.xml"/>	
	<xi:include href="discovery/discovery.csw.getrecordbyid.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.1.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.2.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.2.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.3.xml"/>
	<xi:include href="discovery/discovery.csw.getrecordbyid.4.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.1.1.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.1.2.xml"/>
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
	<xi:include href="discovery/discovery.csw.getrecords.10.xml"/>
	<xi:include href="discovery/discovery.csw.getrecords.11.xml"/>	
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
	<xi:include href="discovery/discovery.filter.getrecords.11.xml"/>
	<xi:include href="discovery/discovery.filter.getrecords.12.xml"/>
				
	<!--=================-->
	<!-- MAIN TEST DRIVER -->
	<!--=================-->		
	
	<xi:include href="sanity-check.xml"/>		
	
	<ctl:test name="ctl:discovery-main">
		  <ctl:param name="csw.GetCapabilities.document"/>
		  <ctl:param name="gmlsf.profile.level"/>	
		  
		<ctl:assertion>Tests the CSW 2.0.1 discovery capabilities and operations.</ctl:assertion>
		<ctl:code>
		
			<!-- Discover endpoints to be used in tests -->
			<xsl:variable name="csw.GetCapabilities.get.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>			
			<xsl:variable name="csw.GetCapabilities.post.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.DescribeRecord.get.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.DescribeRecord.post.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.GetRecords.get.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.GetRecords.post.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>
			<xsl:variable name="csw.GetRecordById.get.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.GetRecordById.post.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.GetDomain.get.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetDomain']/ows:DCP/ows:HTTP/ows:Get/@xlink:href"/>
			</xsl:variable>	
			<xsl:variable name="csw.GetDomain.post.url">
				<xsl:value-of select="$csw.GetCapabilities.document//csw:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetDomain']/ows:DCP/ows:HTTP/ows:Post/@xlink:href"/>
			</xsl:variable>								
	
			<!--TEMPORARY TESTS-->
			<ctl:call-test name="csw:test.getrecords.1">
				<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetCapabilities.get.url"/>
			</ctl:call-test>			
				
				
			<!-- Run the tests -->	
			
			<!-- SANITY-CHECK -->			
			<ctl:call-test name="csw:sanity-check">
				<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
			</ctl:call-test>

			<!-- MANDATORY -->
			
			<xsl:if test="not($csw.DescribeRecord.get.url = '')">
				<ctl:call-test name="csw:discovery.commons.describerecord.1.1">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.1.2">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.1.3">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.describerecord.1.2">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.csw.describerecord.4.2">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>					
				</ctl:call-test>			
			</xsl:if>	
						
			<xsl:if test="not($csw.DescribeRecord.post.url = '')">
				<ctl:call-test name="csw:discovery.commons.describerecord.2.1">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.2">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.3">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.describerecord.2.4">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.describerecord.1.1">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>				
				<ctl:call-test name="csw:discovery.csw.describerecord.2.1">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.csw.describerecord.2.2">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.csw.describerecord.3">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>				
				<ctl:call-test name="csw:discovery.csw.describerecord.4.1">
					<ctl:with-param name="csw.DescribeRecord.post.url" select="$csw.DescribeRecord.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.csw.describerecord.5">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>					
				</ctl:call-test>													
				<ctl:call-test name="csw:discovery.csw.describerecord.6">
					<ctl:with-param name="csw.DescribeRecord.get.url" select="$csw.DescribeRecord.get.url"/>					
				</ctl:call-test>						
			</xsl:if>							
						
			<xsl:if test="not($csw.GetCapabilities.get.url = '')">
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.1.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.10.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.10.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.11.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.11.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.4">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.12.5">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>				
				<ctl:call-test name="csw:discovery.commons.getcapabilities.13">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.14">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.15">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.2.4">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.4">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.5.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.5.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.6.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.7.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.7.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.4">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.8.5">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.9.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getcapabilities.9.2">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.2.1">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.3">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.4">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>			
				<ctl:call-test name="csw:discovery.csw.getcapabilities.5">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>	
				<ctl:call-test name="csw:discovery.csw.getcapabilities.6">
					<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				</ctl:call-test>				
			</xsl:if>
			
			<xsl:if test="not($csw.GetCapabilities.post.url = '')">
				<ctl:call-test name="csw:discovery.commons.getcapabilities.3">
					<ctl:with-param name="csw.GetCapabilities.post.url" select="$csw.GetCapabilities.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getcapabilities.2.2">
					<ctl:with-param name="csw.GetCapabilities.post.url" select="$csw.GetCapabilities.post.url"/>
				</ctl:call-test>
			</xsl:if>

			<xsl:if test="not($csw.GetDomain.post.url = '')">
				<ctl:call-test name="csw:discovery.csw.getdomain.1.1">
					<ctl:with-param name="csw.GetDomain.post.url" select="$csw.GetDomain.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getdomain.2">
					<ctl:with-param name="csw.GetDomain.post.url" select="$csw.GetDomain.post.url"/>
				</ctl:call-test>				
			</xsl:if>

			<xsl:if test="not($csw.GetDomain.get.url = '')">
				<ctl:call-test name="csw:discovery.csw.getdomain.1.2">
					<ctl:with-param name="csw.GetDomain.get.url" select="$csw.GetDomain.get.url"/>
				</ctl:call-test>
			</xsl:if>
						
			<xsl:if test="not($csw.GetRecordById.get.url = '')">
				<ctl:call-test name="csw:discovery.commons.getrecordbyid.1">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>			
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.1.1">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.1">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.2">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.2.3">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.3">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.4">
					<ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
				</ctl:call-test>
			</xsl:if>
			
			<xsl:if test="not($csw.GetRecordById.post.url = '')">
				<ctl:call-test name="csw:discovery.csw.getrecordbyid.1.2">
					<ctl:with-param name="csw.GetRecordById.post.url" select="$csw.GetRecordById.post.url"/>
				</ctl:call-test>
			</xsl:if>
							
			<xsl:if test="not($csw.GetRecords.post.url = '')">
				<ctl:call-test name="csw:discovery.commons.getrecords.2.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>			
				<ctl:call-test name="csw:discovery.commons.getrecords.2.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.1.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>			
				<ctl:call-test name="csw:discovery.csw.getrecords.2.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.2.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.2.3">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.3">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.4">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.5">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.6.3">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.3">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.4">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.8">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.9">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>	
				<ctl:call-test name="csw:discovery.csw.getrecords.10">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.csw.getrecords.11">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>										
				<ctl:call-test name="csw:discovery.filter.getrecords.1.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.1.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.2.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.2.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.3.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.3.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.4.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.4.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.5">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.6">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.7.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.7.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.8">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.9.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.9.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>							
				<ctl:call-test name="csw:discovery.filter.getrecords.10.1">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>		
				<ctl:call-test name="csw:discovery.filter.getrecords.10.2">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.11">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
				<ctl:call-test name="csw:discovery.filter.getrecords.12">
					<ctl:with-param name="csw.GetRecords.post.url" select="$csw.GetRecords.post.url"/>
				</ctl:call-test>						
			</xsl:if>

			<xsl:if test="not($csw.GetRecords.get.url = '')">
				<ctl:call-test name="csw:discovery.csw.getrecords.1.2">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.1">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.csw.getrecords.7.2">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getrecords.1.1">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getrecords.1.2">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getrecords.1.3">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getrecords.1.4">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>
				<ctl:call-test name="csw:discovery.commons.getrecords.1.5">
					<ctl:with-param name="csw.GetRecords.get.url" select="$csw.GetRecords.get.url"/>
				</ctl:call-test>																
			</xsl:if>
			
			<ctl:call-test name="csw:discovery.commons.transaction.1">
				<ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
			</ctl:call-test>

			<!-- OPTIONAL -->
			
			<!-- CONDITIONAL -->
			
		</ctl:code>
	</ctl:test>	
	
</ctl:package>

