<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" 
  defaultPhase="DefaultPhase" 
  version="1.5">
  
  <sch:title>Rules for CSW-2.0.1 GetCapabilities response entities.</sch:title>
  
  <sch:ns prefix="csw" uri="http://www.opengis.net/cat/csw"/>
  <sch:ns prefix="ows" uri="http://www.opengis.net/ows"/>
  
  <sch:phase id="DefaultPhase">
    <sch:active pattern="CapabilitiesPattern"/>
    <sch:active pattern="OptionalElementsPattern"/>
  </sch:phase>
  
  <sch:phase id="CapabilitiesDocPhase">
    <sch:active pattern="CapabilitiesPattern"/>
  </sch:phase>

  <sch:phase id="RequiredCSWBindingsPhase">
    <sch:active pattern="CapabilitiesPattern"/>
    <sch:active pattern="RequiredCSWBindingsPattern"/>
  </sch:phase>
  
  <sch:pattern id="CapabilitiesPattern" name="CapabilitiesPattern">
    <sch:p xml:lang="en">Checks that the document is a CSW v2.0.1 capabilities document.</sch:p>
    <sch:rule id="docElement" context="/">
      <sch:assert id="docElement.infoset" 
        test="csw:Capabilities"
        diagnostics="includedDocElem">
	The document element must have [local name] = "Capabilities" and [namespace name] = "http://www.opengis.net/cat/csw".
      </sch:assert>
      <sch:assert id="docElement.version" 
        test="csw:Capabilities/@version='2.0.1'">
	The @version attribute must have the value "2.0.1".
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="OptionalElementsPattern" name="OptionalElementsPattern">
    <sch:p xml:lang="en">Checks for the presence of all optional child elements.</sch:p>
    <sch:rule id="docElement.children" context="/csw:Capabilities">
      <sch:assert id="ServiceIdentification" 
        test="ows:ServiceIdentification">
	Document is incomplete: the ows:ServiceIdentification element is missing.
      </sch:assert>
      <sch:assert id="ServiceProvider" 
        test="ows:ServiceProvider">
	Document is incomplete: the ows:ServiceProvider element is missing.
      </sch:assert>
      <sch:assert id="OperationsMetadata" 
        test="ows:OperationsMetadata">
	Document is incomplete: the ows:OperationsMetadata element is missing.
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="RequiredCSWBindingsPattern" name="RequiredCSWBindingsPattern">
    <sch:p xml:lang="en">
    Checks that all HTTP method bindings required for CSW implementations are present.
    </sch:p>
    <sch:rule id="RequiredCSWBindings" context="/csw:Capabilities">
      <sch:assert id="GetCapabilities-GET" 
        test="ows:OperationsMetadata/ows:Operation[@name='GetCapabilities']/ows:DCP/ows:HTTP/ows:Get">
	Missing mandatory binding for GetCapabilities using the GET method.
      </sch:assert>
      <sch:assert id="DescribeRecord-POST" 
        test="ows:OperationsMetadata/ows:Operation[@name='DescribeRecord']/ows:DCP/ows:HTTP/ows:Post">
	Missing mandatory binding for DescribeRecord using the POST method.
      </sch:assert>
      <sch:assert id="GetRecords-POST" 
        test="ows:OperationsMetadata/ows:Operation[@name='GetRecords']/ows:DCP/ows:HTTP/ows:Post">
	Missing mandatory binding for GetRecords request using the POST method.
      </sch:assert>
      <sch:assert id="GetRecordById-GET" 
        test="ows:OperationsMetadata/ows:Operation[@name='GetRecordById']/ows:DCP/ows:HTTP/ows:Get">
	Missing mandatory binding for GetRecordById using the GET method.
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:diagnostics>
    <sch:diagnostic id="includedDocElem">
    The included document element has [local name] = <sch:value-of select="local-name(/*[1])"/> 
    and [namespace name] = <sch:value-of select="namespace-uri(/*[1])"/>.
    </sch:diagnostic>
  </sch:diagnostics>
</sch:schema>
