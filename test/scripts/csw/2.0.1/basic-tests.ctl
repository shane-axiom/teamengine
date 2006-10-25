<?xml version="1.0" encoding="UTF-8"?>
<ctl:package
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:p="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	
	<ctl:test name="ctl:check-capabilities">
		<ctl:param name="csw.GetCapabilities.document"/>
		<ctl:assertion>
        Check the retrieved capabilities document for available service endpoints.
        </ctl:assertion>
		<ctl:code>
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

            <ctl:call-test name="ctl:SchematronValidatingParser">
		        <ctl:with-param name="doc" select="$csw.GetCapabilities.document" />
		        <ctl:with-param name="schema">sch/csw/2.0.1/Capabilities.sch</ctl:with-param>
		        <ctl:with-param name="phase">RequiredCSWBindingsPhase</ctl:with-param>
	        </ctl:call-test>

            <xsl:choose>
              <xsl:when test="not(starts-with($csw.GetCapabilities.get.url,'http://'))">
                  <ctl:message>ERROR: HTTP endpoint for GetCapabilities using GET method not found.</ctl:message>
                  <ctl:fail />
              </xsl:when>
              <xsl:otherwise>
                <ctl:call-test name="csw:basic-tests">
				  <ctl:with-param name="csw.GetCapabilities.get.url" select="$csw.GetCapabilities.get.url"/>
				  <ctl:with-param name="csw.GetRecordById.get.url" select="$csw.GetRecordById.get.url"/>
			    </ctl:call-test>
              </xsl:otherwise>
            </xsl:choose>
		</ctl:code>
	</ctl:test>	
    
    <ctl:test name="csw:basic-tests">
      <ctl:param name="csw.GetCapabilities.get.url"/>
      <ctl:param name="csw.GetRecordById.get.url"/>
      <ctl:assertion>
      Run basic tests to determine if the service is available and ready to 
      undergo further testing.
      </ctl:assertion>
      <ctl:comment>
      A GetCapabilities request is submitted to the IUT using the GET method. 
      A subsequent GetRecordById request to retrieve one of the records in the 
      test data set is then submitted and checked for a non-empty response.
      </ctl:comment>
		<ctl:code>
			<xsl:variable name="response1">
				<ctl:request>
					<ctl:url>
						<xsl:value-of select="$csw.GetCapabilities.get.url"/>
					</ctl:url>
					<ctl:method>GET</ctl:method>
					<ctl:param name="service">CSW</ctl:param>
					<ctl:param name="version">2.0.1</ctl:param>
					<ctl:param name="request">GetCapabilities</ctl:param>
					<!--<p:XMLValidatingParser.CSWGML/>-->
				</ctl:request>
			</xsl:variable>
			
            <xsl:choose>
              <xsl:when test="not($response1/*)">
                  <ctl:message>ERROR: GetCapabilities request using GET method failed. Is the endpoint advertised in the capabilities document correct?</ctl:message>
                  <ctl:fail/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:variable name="expression">//csw:Capabilities</xsl:variable>
				<ctl:call-test name="ctl:assert-xpath">
					<ctl:with-param name="expr" select="$expression"/>
					<ctl:with-param name="doc" select="$response1"/>
				</ctl:call-test>
              </xsl:otherwise>
            </xsl:choose>

			<xsl:variable name="response2">
                <ctl:request>
					<ctl:url>
						<xsl:value-of select="$csw.GetRecordById.get.url"/>
					</ctl:url>
					<ctl:method>GET</ctl:method>
					<ctl:param name="service">CSW</ctl:param>
					<ctl:param name="version">2.0.1</ctl:param>
					<ctl:param name="request">GetRecordById</ctl:param>
                    <ctl:param name="id">urn:uuid:94bc9c83-97f6-4b40-9eb8-a8e8787a5c63</ctl:param>
					<!--<p:XMLValidatingParser.CSW/>-->
				</ctl:request>
			</xsl:variable>

            <xsl:choose>
              <xsl:when test="not($response2/*)">
                  <ctl:message>ERROR: GetRecordById request using GET method failed. Are the test data in the catalogue?</ctl:message>
                  <ctl:fail/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:variable name="expression">count(//csw:GetRecordByIdResponse/*) = 1</xsl:variable>
				<ctl:call-test name="ctl:assert-xpath">
					<ctl:with-param name="expr" select="$expression"/>
					<ctl:with-param name="doc" select="$response2"/>
				</ctl:call-test>
              </xsl:otherwise>
            </xsl:choose>
		</ctl:code>
	</ctl:test>
	
</ctl:package>

