<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:wfs="http://www.opengis.net/wfs"
 xmlns:ows="http://www.opengis.net/ows"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--================-->
	<!-- TEST FUNCTIONS -->
	<!--================-->

	<!-- General XPath evaluator (uses Saxon 8.0), i.e.: -->
	<!--<xsl:variable name="expression">//wfs:WFS_Capabilities</xsl:variable>
		<ctl:call-test name="ctl:assert-xpath">
		<ctl:with-param name="expr" select="$expression"/>
		<ctl:with-param name="doc" select="$cap-doc"/>
	</ctl:call-test>-->
	<ctl:test name="ctl:assert-xpath">
		<ctl:param name="expr">An XPath expression.</ctl:param>
		<ctl:param name="doc">An XML document.</ctl:param>
		<ctl:assertion>Test that the given document contains the given xpath assertion.</ctl:assertion>
		<ctl:code>
			<xsl:for-each select="$doc">
				<xsl:choose>
					<xsl:when test="saxon:evaluate($expr)"/>
					<xsl:otherwise>
						<ctl:message>The expression '<xsl:value-of select="$expr"/>' failed.</ctl:message>
						<ctl:fail/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</ctl:code>
	</ctl:test>
	
	<!-- Used to call the schematron validator outside the request element, i.e.: -->
	<!--<ctl:call-test name="ctl:SchematronValidatingParser">
		<ctl:with-param name="doc" select="$cap-doc"/>
		<ctl:with-param name="schematronFile">sch/wfs/1.1.0/WFSCapabilities.sch</ctl:with-param>
		<ctl:with-param name="phase">Default</ctl:with-param>
	</ctl:call-test>-->
	<ctl:test name="ctl:SchematronValidatingParser">
			<ctl:param name="doc"/>
			<ctl:param name="schematronFile"/>
			<ctl:param name="phase"/>
			<ctl:assertion>Validating with SchematronValidatingParser.</ctl:assertion>
			<ctl:code>
				<xsl:variable name="return-value">
					<ctl:call-function name="ctl:CallSchematronValidatingParser">
						<ctl:with-param name="doc"><xsl:copy-of select="$doc"/></ctl:with-param>
						<ctl:with-param name="schematronFile" select="string($schematronFile)"/>
						<ctl:with-param name="phase" select="string($phase)"/>
					</ctl:call-function>
				</xsl:variable>
				<xsl:if test="$return-value='false'">
					<ctl:fail/>
				</xsl:if>	
			</ctl:code>
	</ctl:test>	
	<ctl:function name="ctl:CallSchematronValidatingParser">
		<ctl:param name="doc"/>
		<ctl:param name="schematronFile"/>
		<ctl:param name="phase"/>
		<ctl:description>Afunction to call the schematon validator.</ctl:description>
		<ctl:java class="com.occamlab.te.parsers.SchematronValidatingParser" method="checkSchematronRules" initialized="true"/>
	</ctl:function>		
	
	<!-- Used to call the xml validator outside the request element (after using parsers:HTTPParser in this case), i.e.: -->
	<!--<ctl:call-test name="ctl:XMLValidatingParser">
			<ctl:with-param name="doc"><xsl:copy-of select="$request1//content/*"/></ctl:with-param>
			<ctl:with-param name="instruction">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/ogc/wfs/1.1.0/wfs.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
	</ctl:call-test>-->
	<ctl:test name="ctl:XMLValidatingParser">
			<ctl:param name="doc"/>
			<ctl:param name="instruction"/>
			<ctl:assertion>Validating with XMLValidatingParser.</ctl:assertion>
			<ctl:code>
				<xsl:variable name="return-value">
					<ctl:call-function name="ctl:CallXMLValidatingParser">
						<ctl:with-param name="doc"><xsl:copy-of select="$doc"/></ctl:with-param>
						<ctl:with-param name="instruction"><xsl:copy-of select="$instruction"/></ctl:with-param>
					</ctl:call-function>
				</xsl:variable>
				<xsl:if test="$return-value='false'">
					<ctl:fail/>
				</xsl:if>	
			</ctl:code>
	</ctl:test>	
	<ctl:function name="ctl:CallXMLValidatingParser">
		<ctl:param name="doc"/>
		<ctl:param name="instruction"/>
		<ctl:description>Afunction to call the XML validator.</ctl:description>
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="checkXMLRules" initialized="true"/>
	</ctl:function>	

	<!--Used to call the XMLValidatingParser test with a set of schemas defined here (globally, not at the test level), i.e.:-->
	<!--<ctl:call-test name="ctl:XMLValidatingParser.CSWGML">
			<ctl:with-param name="doc"><xsl:copy-of select="$request1//content/*"/></ctl:with-param>
	</ctl:call-test>-->
	<ctl:test name="ctl:XMLValidatingParser.WFSGML">
			<ctl:param name="doc"/>
			<ctl:assertion>Validating with XMLValidatingParser using predefined schemas.</ctl:assertion>
			<ctl:code>
				<ctl:call-test name="ctl:XMLValidatingParser">
					<ctl:with-param name="doc"><xsl:copy-of select="$doc"/></ctl:with-param>
					<ctl:with-param name="instruction">				
						<parsers:schemas>
							<parsers:schema type="resource">xsd/ogc/wfs/1.1.0/wfs.xsd</parsers:schema>
							<parsers:schema type="resource">xsd/ogc/gml/3.1.1/base/gml-3.1.1.xsd</parsers:schema>
						</parsers:schemas>
					</ctl:with-param>
				</ctl:call-test>
			</ctl:code>			
	</ctl:test>			

	<ctl:test name="ctl:XMLValidatingParser.WFS">
			<ctl:param name="doc"/>
			<ctl:assertion>Validating with XMLValidatingParser using predefined schemas.</ctl:assertion>
			<ctl:code>
				<ctl:call-test name="ctl:XMLValidatingParser">
					<ctl:with-param name="doc"><xsl:copy-of select="$doc"/></ctl:with-param>
					<ctl:with-param name="instruction">				
						<parsers:schemas>
							<parsers:schema type="resource">xsd/ogc/wfs/1.1.0/wfs.xsd</parsers:schema>
						</parsers:schemas>
					</ctl:with-param>
				</ctl:call-test>
			</ctl:code>			
	</ctl:test>	
	
	<!--=================-->
	<!-- CUSTOM PARSERS -->
	<!--=================-->		
	
	<!-- XML validating parsers, defined for various response types to be reused by multiple tests -->
	<ctl:parser name="myparsers:XMLValidatingParser.WFS">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/ogc/wfs/1.1.0/wfs.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	

	<ctl:parser name="myparsers:XMLValidatingParser.ServiceException">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/ogc/ows/1.0.0/ows-1.0.0.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	
	
	<ctl:parser name="myparsers:XMLValidatingParser.XMLSchema">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/w3c/xmlschema/1.0/XMLSchema.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>		
	
	<!-- Schematron vlaidator used in request element, pass in information for schematron schema to use, i.e.: -->
	<!--<myparsers:SchematronValidatingParser>
			<parsers:schemas>
				<parsers:schema type="resource" phase="Default">sch/wfs/1.1.0/WFSCapabilities.sch</parsers:schema>
			</parsers:schemas>
		</myparsers:SchematronValidatingParser>-->
	<ctl:parser name="myparsers:SchematronValidatingParser">
		<ctl:param name="schema_link"/>
		<ctl:java class="com.occamlab.te.parsers.SchematronValidatingParser" method="parse" initialized="true"/>
	</ctl:parser>		
	
	<!-- Schematron validator used in request element, uses the given schema, i.e.: -->
	<!--<myparsers:SchematronValidatingParser.WFSCapabilities/>-->
	<ctl:parser name="myparsers:SchematronValidatingParser.WFSCapabilities">
		<ctl:java class="com.occamlab.te.parsers.SchematronValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schema_link">
					<parsers:schemas>
						<parsers:schema type="resource" phase="Default">sch/wfs/1.1.0/WFSCapabilities.sch</parsers:schema>
					</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	

	<!--====================-->
	<!-- PACKAGE INCLUSIONS -->
	<!--====================-->	
	
	<xi:include href="1.1.0/basic.ctl"/>	
	
</ctl:package>

