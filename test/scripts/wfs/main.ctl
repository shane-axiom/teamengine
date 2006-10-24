<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://teamengine.sourceforge.net/parsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:wfs="http://www.opengis.net/wfs"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xlink="http://www.w3.org/1999/xlink"  
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
	
	<xi:include href="1.1.0/basic.ctl"/>
	<xi:include href="1.1.0/transaction.ctl"/>
	
	
	<ctl:suite name="ctl:wfs-1.1.0-compliance-suite">
		  <ctl:title>WFS 1.1.0 Compliance Suite</ctl:title>
		  <ctl:description>Validates that a WFS 1.1.0 is compliant against a certain conformance class.</ctl:description>
		  <ctl:starting-test>ctl:wfs-main</ctl:starting-test>
	   </ctl:suite>

   <ctl:test name="ctl:wfs-main">
      <ctl:assertion>WFS 1.1.0 Tests</ctl:assertion>
      <ctl:code>

		<!--RI: http://geo.openplans.org:8080/geoserver/wfs/GetCapabilities-->
		<!--http://nautilus.baruch.sc.edu/wms/in_situ-->
		<!--http://localhost:8080/wfs/http-->

         <xsl:variable name="form-values">
            <ctl:form>
               <body>
                  <h3>Web Feature Service 1.1.0</h3>
				  <p>
				  This is the WFS 1.1.0 compliance tests for the basic, transactional, and xlink conformance classes.
				  </p>
                  <h4>Capabilities Setup</h4>
                  <p>
                     Enter a capabilities document URL endpoint below. This may be the URL to
                     a static capabilities document using HTTP-GET, or a GetCapabilities request 
                     from a WFS (hostname, port and service path needed). The query component
                     is not necessary, it will be retireived for the service type "WFS" and version number "1.1.0".
                  </p>
                  <blockquote>
                     <table border="3" padding="3">
                        <tr>
                           <td align="left">Capabilities URL:</td>                        
                           <td align="center">
                              <input name="capabilities-url" size="100" type="text" value="http://geo.openplans.org:8080/geoserver/wfs/GetCapabilities"/>
                           </td>
                        </tr>
                     </table>
                  </blockquote>
				  <br/>
				  
                  <h4>Conformance Level</h4>
                  <p>
                     The conformance level indicates the level of support implemented by the WFS service. The basic level only supports
                     GetCapabilities, DescribeFeatureType and GetFeature, while transaction adds Transaction elements to basic.
                     Select which conformance level you want to test below.
                  </p>
                  <blockquote>
                     <table border="3" padding="3">
                        <tr>
                           <td align="center">
                              <input name="conformance" type="radio" value="basic" checked="checked"/>
                           </td>
                           <td align="left">Basic - Certify that the server meets all requirements for the Basic conformance class</td>
                        </tr>
                        <tr>
                           <td align="center">
                              <input name="conformance" type="radio" value="transaction"/>
                           </td>
                           <td align="left">Transaction - Certify that the server meets all requirements for the Transaction conformance class</td>
                        </tr>
                        <tr>
                           <td align="center">
                              <input name="conformance" type="radio" value="xlink"/>
                           </td>
                           <td align="left">XLink - Certify that the server meets all requirements for the XLink conformance class</td>
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
		<xsl:variable name="wfs.GetCapabilities.get.url" select="$form-values/values/value[@key='capabilities-url']"/>
        <xsl:variable name="wfs.conformance.class" select="$form-values/values/value[@key='conformance']"/>
		<xsl:variable name="gmlsf.profile.level" select="$form-values/values/value[@key='profile']"/>

		<!--TODO: Get profile from DescribeFeatureType and XPath expression (gmlsf conformance level) rather than user input-->

		<!-- Gather additional information from the capabilities document -->
		<xsl:variable name="wfs.GetCapabilities.document">
			<ctl:request>
				<ctl:url>
					<xsl:value-of select="$wfs.GetCapabilities.get.url"/>
				</ctl:url>
				<ctl:method>get</ctl:method>
				<ctl:param name="service">WFS</ctl:param>
				<ctl:param name="version">1.1.0</ctl:param>
				<ctl:param name="request">GetCapabilities</ctl:param>
			</ctl:request>
		</xsl:variable>	
 
		<xsl:if test="not($wfs.GetCapabilities.document//wfs:WFS_Capabilities)">
			<ctl:message>GetCapabilities using HTTP-GET not working!</ctl:message>	
			<ctl:fail/>
		</xsl:if>				
 
		 <!-- Call the required conformance/profile tests -->
 
		 <xsl:if test="$wfs.conformance.class = 'basic'">    	
            <ctl:call-test name="ctl:basic-main">
				<ctl:with-param name="wfs.GetCapabilities.document" select="$wfs.GetCapabilities.document"/>														
				<ctl:with-param name="gmlsf.profile.level" select="$gmlsf.profile.level"/>	
            </ctl:call-test>         	
		 </xsl:if>

		 <xsl:if test="$wfs.conformance.class = 'transaction'">    	
            <ctl:call-test name="ctl:transaction-main">
				<ctl:with-param name="wfs.GetCapabilities.document" select="$wfs.GetCapabilities.document"/>														
				<ctl:with-param name="gmlsf.profile.level" select="$gmlsf.profile.level"/>	
            </ctl:call-test>         	
		 </xsl:if>

		 <xsl:if test="$wfs.conformance.class = 'xlink'"/>    	

      </ctl:code>
   </ctl:test>	
	
</ctl:package>

