<?xml version="1.0" encoding="UTF-8"?>
<ctl:package
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:p="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:dc="http://purl.org/dc/elements/1.1/" 
 xmlns:dct="http://purl.org/dc/terms/" 
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema">

   <ctl:suite name="ctl:csw-2.0.1-compliance-suite">
       <ctl:title>CSW 2.0.1 Compliance Test Suite</ctl:title>
       <ctl:description>
       Validates a CSW 2.0.1 catalogue implementation against all applicable 
       abstract test suites. No specific CSW application profile is presumed.
       </ctl:description>
      <ctl:starting-test>ctl:csw-main</ctl:starting-test>
   </ctl:suite>
   
   <ctl:test name="ctl:csw-main">
      <ctl:assertion>CSW 2.0.1 compliance tests</ctl:assertion>
      <ctl:code>
   		<!--RI: http://geonetwork.mysdi.org:8081/geonetwork/srv/en/csw-->   
		<!--http://geobrain.laits.gmu.edu:8099/LAITSCSW2/discovery-->         
         <xsl:variable name="form-values">
            <ctl:form height="600" width="800">
               <body>
                  <h3>CSW Catalogue 2.0.1 - Test setup</h3>
                  <h4>Service capabilities</h4>
                  <p>
                  Please specify a URL from which the CSW capabilities document 
                  can be retrieved. Modify the <em>hostname</em>, <em>port</em>, 
                  and <em>path</em> components below for the implementation under 
                  test:
                  </p>
                  <br/>
                  <table border="3" padding="3">
                    <tr>
                      <td align="left">Capabilities URL</td>
                      <td align="center">
                          <input name="capabilities.endpoint" size="128" type="text" 
                                 value="http://hostname:port/path"/>
                      </td>
                    </tr>
                  </table>
                  <br />
                  <input type="submit" value="OK"/>
               </body>
            </ctl:form>
         </xsl:variable>

		<!-- Populate global variables from form data -->
		<xsl:variable name="csw.GetCapabilities.get.url" 
                      select="$form-values/values/value[@key='capabilities.endpoint']"/>

		<!-- Extract additional information from the capabilities document -->
		<xsl:variable name="csw.GetCapabilities.document">
			<ctl:request>
				<ctl:url>
					<xsl:value-of select="$csw.GetCapabilities.get.url"/>
				</ctl:url>
				<ctl:method>GET</ctl:method>
				<ctl:param name="service">CSW</ctl:param>
				<ctl:param name="version">2.0.1</ctl:param>
				<ctl:param name="request">GetCapabilities</ctl:param>
			</ctl:request>
		</xsl:variable>	
 
		<xsl:if test="not($csw.GetCapabilities.document//csw:Capabilities)">
			<ctl:message>Did not retrieve a csw:Capabilities (v2.0.1) document!</ctl:message>	
			<ctl:fail/>
		</xsl:if>

		<ctl:call-test name="ctl:discovery-main">
			<ctl:with-param name="csw.GetCapabilities.document" select="$csw.GetCapabilities.document"/>															
		</ctl:call-test>
      </ctl:code>
   </ctl:test>	
	
   <xi:include href="functions.ctl"/>
   <xi:include href="parsers.ctl"/>
   <xi:include href="2.0.1/discovery2.ctl"/>
</ctl:package>
