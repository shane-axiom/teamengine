<ctl:package
 xmlns="http://www.w3.org/2001/XMLSchema"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:parsers="http://www.occamlab.com/te/parsers"
 xmlns:myparsers="http://www.galdosinc.com/myparsers"
 xmlns:saxon="http://saxon.sf.net/"
 xmlns:csw="http://www.opengis.net/cat/csw"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xi="http://www.w3.org/2001/XInclude"
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.occamlab.com/ctl ../../../apps/engine/resources/com/occamlab/te/schemas/ctl.xsd">

	<!--================-->
	<!-- TEST FUNCTIONS -->
	<!--================-->

	<!-- General XPath evaluator (uses Saxon 8.0), i.e.: -->
	<!--<xsl:variable name="expression">//csw:Capabilities</xsl:variable>
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
		<ctl:with-param name="schematronFile">sch/csw/2.0.1/CSWCapabilities.sch</ctl:with-param>
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
	
	<!--=================-->
	<!-- CUSTOM PARSERS -->
	<!--=================-->		
	
	<!-- XML validating parsers, defined for various response types to be reused by multiple tests -->
	<ctl:parser name="myparsers:XMLValidatingParser.CSW">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/csw-2.0.1-composite.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	

	<ctl:parser name="myparsers:XMLValidatingParser.GML3.1.1">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/csw-2.0.1-composite.xsd</parsers:schema>
					<parsers:schema type="resource">xsd/gml-3.1.1.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	

	<ctl:parser name="myparsers:XMLValidatingParser.ServiceException">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/filter-1.1.0-composite.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	
	
	<ctl:parser name="myparsers:XMLValidatingParser.XMLSchema">
		<ctl:java class="com.occamlab.te.parsers.XMLValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schemas_links">
				<parsers:schemas>
					<parsers:schema type="resource">xsd/xmlschema-1.0.xsd</parsers:schema>
				</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>		
	
	<!-- Schematron vlaidator used in request element, pass in information for schematron schema to use, i.e.: -->
	<!--<myparsers:SchematronValidatingParser>
			<parsers:schemas>
				<parsers:schema type="resource" phase="Default">sch/csw/2.0.1/CSWCapabilities.sch</parsers:schema>
			</parsers:schemas>
		</myparsers:SchematronValidatingParser>-->
	<ctl:parser name="myparsers:SchematronValidatingParser">
		<ctl:param name="schema_link"/>
		<ctl:java class="com.occamlab.te.parsers.SchematronValidatingParser" method="parse" initialized="true"/>
	</ctl:parser>		
	
	<!-- Schematron validator used in request element, uses the given schema, i.e.: -->
	<!--<myparsers:SchematronValidatingParser.CSWCapabilities/>-->
	<ctl:parser name="myparsers:SchematronValidatingParser.CSWCapabilities">
		<ctl:java class="com.occamlab.te.parsers.SchematronValidatingParser" method="parse" initialized="true">
			<ctl:with-param name="schema_link">
					<parsers:schemas>
						<parsers:schema type="resource" phase="Default">sch/csw/2.0.1/CSWCapabilities.sch</parsers:schema>
					</parsers:schemas>
			</ctl:with-param>
		</ctl:java>
	</ctl:parser>	

	<!--====================-->
	<!-- PACKAGE INCLUSIONS -->
	<!--====================-->	
	
	<xi:include href="2.0.1/discovery.ctl"/>	
	
</ctl:package>

