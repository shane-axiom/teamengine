<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:dc="http://purl.org/dc/elements/1.1/" 
 xmlns:dct="http://purl.org/dc/terms/" 
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--=======================-->
	<!-- FUNCTIONS AND PARSERS -->
	<!--=======================-->	

	<xi:include href="functions.ctl"/>	
	<xi:include href="parsers.ctl"/>	

	<!--=====================-->
	<!-- CONFORMANCE LEVELS -->
	<!--=====================-->	
	
	<xi:include href="2.0.1/discovery.ctl"/>
	
	
	<ctl:suite name="ctl:csw-2.0.1-compliance-suite">
		  <ctl:title>CSW 2.0.1 Compliance Suite</ctl:title>
		  <ctl:description>Validates that a CSW 2.0.1 is compliant against a certain conformance class.</ctl:description>
		  <ctl:starting-test>ctl:csw-main</ctl:starting-test>
	   </ctl:suite>

   <ctl:test name="ctl:csw-main">
      <ctl:assertion>CSW 2.0.1 Tests</ctl:assertion>
      <ctl:code>
      
   			<!--RI: http://geonetwork.mysdi.org:8081/geonetwork/srv/en/csw-->   
			<!--http://geobrain.laits.gmu.edu:8099/LAITSCSW2/discovery-->         

         <xsl:variable name="form-values">
            <ctl:form>
               <body>
                  <h3>Web Feature Service 2.0.1</h3>
				  <p>
				  This is the CSW 2.0.1 compliance tests for the basic, transactional, and xlink conformance classes.
				  </p>
                  <h4>Capabilities Setup</h4>
                  <p>
                     Enter a capabilities document URL endpoint below. This may be the URL to
                     a static capabilities document using HTTP-GET, or a GetCapabilities request 
                     from a CSW (hostname, port and service path needed). The query component
                     is not necessary, it will be retireived for the service type "CSW" and version number "2.0.1".
                  </p>
                  <blockquote>
                     <table border="3" padding="3">
                        <tr>
                           <td align="left">Capabilities URL:</td>                        
                           <td align="center">
                              <input name="capabilities-url" size="100" type="text" value="http://geonetwork.mysdi.org:8081/geonetwork/srv/en/csw"/>
                           </td>
                        </tr>
                     </table>
                  </blockquote>
				  <br/>
				  
                  <h4>GMLSF Compliance Level</h4>
                  <p>
                     The GML simple Features compliance level indicates the GML profile to use, either SF level 0 or 1.  It is expected
                     that the correct data instances and GMLSF schemas for each level are already loaded in the service under test.
                  </p>
                  <blockquote>
                     <table border="3" padding="3">
                        <tr>
                           <td align="center">
                              <input name="profile" type="radio" value="basic" checked="checked"/>
                           </td>
                           <td align="left">SF-0 - Certify that the server meets all requirements for the GML SF level 0 profile</td>
                        </tr>
                        <tr>
                           <td align="center">
                              <input name="profile" type="radio" value="transactional"/>
                           </td>
                           <td align="left">SF-1 - Certify that the server meets all requirements for the GML SF level 1 profile</td>
                        </tr>
                     </table>
                  </blockquote>
				  <br/>
				                    
                  <input type="submit" value="OK"/>
               </body>
            </ctl:form>
         </xsl:variable>

		<!-- Get user input: -->
		<xsl:variable name="csw.GetCapabilities.get.url" select="$form-values/values/value[@key='capabilities-url']"/>
		<xsl:variable name="gmlsf.profile.level" select="$form-values/values/value[@key='profile']"/>

		<!--TODO: Get profile from DescribeFeatureType and XPath expression (gmlsf conformance level) rather than user input-->

		<!-- Gather additional information from the capabilities document -->
		<xsl:variable name="csw.GetCapabilities.document">
			<ctl:request>
				<ctl:url>
					<xsl:value-of select="$csw.GetCapabilities.get.url"/>
				</ctl:url>
				<ctl:method>get</ctl:method>
				<ctl:param name="service">http://www.opengis.net/cat/csw</ctl:param>
				<ctl:param name="version">2.0.1</ctl:param>
				<ctl:param name="request">GetCapabilities</ctl:param>
			</ctl:request>
		</xsl:variable>	
 
		<xsl:if test="not($csw.GetCapabilities.document//csw:Capabilities)">
			<ctl:message>GetCapabilities using HTTP-GET not working!</ctl:message>	
			<ctl:fail/>
		</xsl:if>				
 	
		<ctl:call-test name="ctl:discovery-main">
			<ctl:with-param name="csw.GetCapabilities.document" select="$csw.GetCapabilities.document"/>														
			<ctl:with-param name="gmlsf.profile.level" select="$gmlsf.profile.level"/>	
		</ctl:call-test>         	

      </ctl:code>
   </ctl:test>	
	
</ctl:package>

