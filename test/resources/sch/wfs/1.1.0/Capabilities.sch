<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" 
  defaultPhase="DefaultPhase" 
  version="1.5">
  
  <sch:title>Rules for WFS-1.1.0 GetCapabilities response entities.</sch:title>
  
	<sch:ns prefix="wfs" uri="http://www.opengis.net/wfs"/>
	<sch:ns prefix="ows" uri="http://www.opengis.net/ows"/>
	<sch:ns prefix="ogc" uri="http://www.opengis.net/ogc"/>
  
  <sch:phase id="DefaultPhase">
    <sch:active pattern="CapabilitiesPattern"/>
  </sch:phase>
  
  <sch:pattern id="CapabilitiesPattern" name="CapabilitiesPattern">
    <sch:p xml:lang="en">Checks that the document is a WFS v1.1.0 capabilities document.</sch:p>
    <sch:rule id="docElement" context="/">
      <sch:assert id="docElement.infoset" 
        test="wfs:WFS_Capabilities"
        diagnostics="includedDocElem">
	The document element must have [local name] = "WFS_Capabilities" and [namespace name] = "http://www.opengis.net/wfs".
      </sch:assert>
      <sch:assert id="docElement.version" 
        test="wfs:WFS_Capabilities/@version='1.1.0'">
	The @version attribute must have the value "1.1.0".
      </sch:assert>
    </sch:rule>
  </sch:pattern>

  <sch:diagnostics>
	<sch:diagnostic id="includedDocElem">
The included document element has [local name] = <sch:value-of select="local-name(/*[1])"/> 
and [namespace name] = <sch:value-of select="namespace-uri(/*[1])"/>.
	</sch:diagnostic>
	<sch:diagnostic id="serviceVersion">
The advertised service version is <sch:value-of select="//wfs:WFS_Capabilities/@version"/>.
	</sch:diagnostic>
</sch:diagnostics> 
 
</sch:schema>