<?xml version="1.0" encoding="UTF-8"?>
<sch:schema id="CSW.Capabilities" 
defaultPhase="Default" 
version="1.5" 
xmlns="http://www.ascc.net/xml/schematron"
xmlns:sch="http://www.ascc.net/xml/schematron"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.ascc.net/xml/schematron
  http://www.ascc.net/xml/schematron/schematron1-5.xsd" >

	<sch:title>Patterns for CSW-2.0.1 capabilities documents</sch:title>
	
	<sch:ns prefix="csw" uri="http://www.opengis.net/cat/csw"/>
	<sch:ns prefix="ows" uri="http://www.opengis.net/ows"/>
	<sch:ns prefix="ogc" uri="http://www.opengis.net/ogc"/>
	
    <sch:p xml:lang="en">
  Checks that a CSW-2.0.1 capabilities document is complete.
    </sch:p>

	<sch:phase id="Default">
		<sch:active pattern="latestVersion"/>
	</sch:phase>

	<sch:phase id="AllTopLevelElements">
		<sch:active pattern="latestVersion"/>
		<sch:active pattern="topLevelElements"/>
	</sch:phase>

	<sch:phase id="OnlyServiceProviderAndFilterCapabilities">
		<sch:active pattern="latestVersion"/>
		<sch:active pattern="onlyServiceProviderAndFilterCapabilitiesPattern"/>
	</sch:phase>

	<sch:phase id="FullOperationsMetadata">
		<sch:active pattern="latestVersion"/>
		<sch:active pattern="fullOperationsMetadataPattern"/>
	</sch:phase>

	<sch:phase id="RequiredOperations">
		<sch:active pattern="latestVersion"/>
		<sch:active pattern="requiredOperationsPattern"/>
	</sch:phase>

	<sch:phase id="AllCSWRequiredElements">
		<sch:active pattern="latestVersion"/>
		<sch:active pattern="allCSWRequiredElementsPattern"/>
	</sch:phase>

	<sch:pattern id="latestVersion" name="latestVersion">
		<sch:p xml:lang="en">
    Verifies the presence of the Capabilities root element and proper version.
    </sch:p>
		<sch:rule id="docElement" context="/">
			<sch:assert id="Capabilities" test="csw:Capabilities" diagnostics="includedDocElem">
	The document element must have [local name] = "Capabilities" and [namespace name] = "http://www.opengis.net/cat/csw".
            </sch:assert>
		</sch:rule>
		<sch:rule id="fullCapabilities" context="csw:Capabilities">
			<sch:assert id="Capabilities.version" test="@version='2.0.1'" diagnostics="serviceVersion">
	The Capabilities/@version attribute must be present and indicate 2.0.1.
            </sch:assert>
		</sch:rule>
	</sch:pattern>

	<sch:pattern id="topLevelElements" name="topLevelElements">
		<sch:p xml:lang="en">
    Verifies the presence all required top-level elements.
    </sch:p>
		<sch:rule id="topLevel" context="csw:Capabilities">
		     <sch:assert id="Capabilities.ServiceIdentification"  test="ows:ServiceIdentification">
	The ows:ServiceIdentificationelement must be present.
			</sch:assert>  
			<sch:assert id="Capabilities.ServiceProvider" test="ows:ServiceProvider">
	The ows:ServiceProvider element must be present.
		    </sch:assert>
		    <sch:assert id="Capabilities.OperationsMetadata" test="ows:OperationsMetadata">
	The ows:OperationsMetadata element must be present.
		    </sch:assert>
		    <sch:assert id="Capabilities.Filter_Capabilities" test="ogc:Filter_Capabilities">
	The ogc:Filter_Capabilities element must be present.
		    </sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="onlyServiceProviderAndFilterCapabilitiesPattern" name="onlyServiceProviderAndFilterCapabilitiesPattern">
		<sch:p xml:lang="en">
    Verifies the presence of the ServiceProvider and Filter_Capabilities only.
    </sch:p>
		<sch:rule id="someTopLevel" context="csw:Capabilities">
		     <sch:assert id="Capabilities.noServiceIdentification"  test="not(ows:ServiceIdentification)">
	The ows:ServiceIdentificationelement must not be present.
			</sch:assert>  
			<sch:assert id="Capabilities.onlyServiceProvider" test="ows:ServiceProvider">
	The ows:ServiceProvider element must be present.
		    </sch:assert>
		    <sch:assert id="Capabilities.noOperationsMetadata" test="not(ows:OperationsMetadata)">
	The ows:OperationsMetadata element must not be present.
		    </sch:assert>
		    <sch:assert id="Capabilities.onlyFilter_Capabilities" test="ogc:Filter_Capabilities">
	The ogc:Filter_Capabilities element must be present.
		    </sch:assert>
		</sch:rule>
	</sch:pattern>	

	<sch:pattern id="fullOperationsMetadataPattern" name="fullOperationsMetadataPattern">
		<sch:p xml:lang="en">
    Verifies the presence and correct attributes for the OperationsMetadata element, for the OWS specification.
    </sch:p>
		<sch:rule id="Capabilities.OperationsMetadata.Content" context="csw:Capabilities">
			<sch:assert id="Capabilities.OperationsMetadata.onlyGetCapabilities" test="ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Get">
	The OperationsMetadata must include the HTTP-Get GetCapabilities operation.
            </sch:assert>
		</sch:rule>
	</sch:pattern>

	<sch:pattern id="requiredOperationsPattern" name="requiredOperationsPattern">
		<sch:p xml:lang="en">
    Verifies the presence and correct attributes for the OperationsMetadata element, for the CSW specification.
    </sch:p>
		<sch:rule id="Capabilities.OperationsMetadata.MandatoryContent" context="csw:Capabilities">
			<sch:assert id="Capabilities.OperationsMetadata.GetCapabilities" test="ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Get">
	The OperationsMetadata must include the HTTP-Get GetCapabilities operation.
            </sch:assert>
   			<sch:assert id="Capabilities.OperationsMetadata.DescribeRecord" test="ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Post">
	The OperationsMetadata must include the HTTP-Post DescribeRecord operation.
            </sch:assert>
   			<!--<sch:assert id="Capabilities.OperationsMetadata.GetDomain" test="ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Post">
	The OperationsMetadata must include the HTTP-Post GetDomain operation.
            </sch:assert>-->
   			<sch:assert id="Capabilities.OperationsMetadata.GetRecords" test="ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Post">
	The OperationsMetadata must include the HTTP-Post GetRecords operation.
            </sch:assert>
   			<!--<sch:assert id="Capabilities.OperationsMetadata.GetRecordById" test="ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Get">
	The OperationsMetadata must include the HTTP-Get GetRecordById operation.
            </sch:assert>
   			<sch:assert id="Capabilities.OperationsMetadata.Harvest" test="ows:OperationsMetadata/ows:Operation[@name='Harvest']/ows:DCP/ows:HTTP/ows:Post">
	The OperationsMetadata must include the HTTP-Post Harvest operation.
            </sch:assert>
   			<sch:assert id="Capabilities.OperationsMetadata.Transaction" test="ows:OperationsMetadata/ows:Operation[@name='Transaction']/ows:DCP/ows:HTTP/ows:Post">
	The OperationsMetadata must include the HTTP-Post Transaction operation.
            </sch:assert>-->
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="allCSWRequiredElementsPattern" name="allCSWRequiredElementsPattern">
		<sch:p xml:lang="en">
    Verifies the presence of all capabilities elements for the CSW specification.
    </sch:p>
		<sch:rule id="Capabilities.RequiredElements" context="csw:Capabilities">
			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.LogicalOperators" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:LogicalOperators">
	The Capabilities document must have the And, Or, and Not logical operators (presence of the LogicalOperators element).
            </sch:assert>
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsEqualTo" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsEqualTo'">
	The Capabilities document must have the PropertyIsEqualTo comparison operator present.
            </sch:assert>
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsNotEqualTo" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsNotEqualTo'">
	The Capabilities document must have the PropertyIsNotEqualTo comparison operator present.
            </sch:assert>            
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsLessThan" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsLessThan'">
	The Capabilities document must have the PropertyIsLessThan comparison operator present.
            </sch:assert>                
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsGreaterThan" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsGreaterThan'">
	The Capabilities document must have the PropertyIsGreaterThan comparison operator present.
            </sch:assert>    
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsLessThanOrEqualTo" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsLessThanOrEqualTo'">
	The Capabilities document must have the PropertyIsLessThanOrEqualTo comparison operator present.
            </sch:assert>                
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsGreaterThanOrEqualTo" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsGreaterThanOrEqualTo'">
	The Capabilities document must have the PropertyIsGreaterThanOrEqualTo comparison operator present.
            </sch:assert>    
   			<sch:assert id="Capabilities.Filter_Capabilities.Scalar_Capabilities.ComparisonOperators.PropertyIsLike" test="ogc:Filter_Capabilities/ogc:Scalar_Capabilities/ogc:ComparisonOperators/ogc:ComparisonOperator='PropertyIsLike'">
	The Capabilities document must have the PropertyIsLike comparison operator present.
            </sch:assert>    
			<sch:assert id="Capabilities.Filter_Capabilities.Spatial_Capabilities.SpatialOperators.BBOX" test="ogc:Filter_Capabilities/ogc:Spatial_Capabilities/ogcSpatialOperators/ogc:SpatialOperator/@name='BBOX'">
	The Capabilities document must have the spatial operator BBOX present.
            </sch:assert>
		</sch:rule>
	</sch:pattern>	
	
	<sch:diagnostics>
		<sch:diagnostic id="includedDocElem">
    The included document element has [local name] = <sch:value-of select="local-name(/*[1])"/> 
    and [namespace name] = <sch:value-of select="namespace-uri(/*[1])"/>.
    </sch:diagnostic>
		<sch:diagnostic id="serviceVersion">
    The advertised service version is <sch:value-of select="//csw:Capabilities/@version"/>.
    </sch:diagnostic>
	</sch:diagnostics>
	
</sch:schema>