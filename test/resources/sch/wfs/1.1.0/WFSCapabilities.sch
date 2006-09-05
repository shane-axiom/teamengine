<?xml version="1.0" encoding="UTF-8"?>
<sch:schema id="WFS.Capabilities"
  defaultPhase="Default" 
  version="1.5" 
  xmlns:sch="http://www.ascc.net/xml/schematron">
  
  <sch:title>Patterns for WFS-1.1.0 capabilities documents</sch:title>
  
  <sch:ns prefix="wfs" uri="http://www.opengis.net/wfs"/>
  <sch:ns prefix="ogc" uri="http://www.opengis.net/ogc"/>
  
  <sch:p xml:lang="en">
  Checks that a WFS-1.1.0 capabilities document is complete.
  </sch:p>
  
  <sch:phase id="Default">
    <sch:active pattern="topLevelElements"/>
  </sch:phase>
  
  <sch:pattern id="topLevelElements" name="topLevelElements" >
    <sch:p xml:lang="en">
    Verifies the presence all required top-level elements.
    </sch:p>
    <sch:rule id="docElement" context="/">
      <sch:assert id="WFS_Capabilities" 
        test="wfs:WFS_Capabilities"
        diagnostics="includedDocElem">
	The document element must have [local name] = "WFS_Capabilities" and [namespace name] = "http://www.opengis.net/wfs".
      </sch:assert>
    </sch:rule>
    <sch:rule id="fullCapabilities" context="wfs:WFS_Capabilities">
      <sch:assert id="WFS_Capabilities.version" 
        test="@version='1.1.0'"
        diagnostics="serviceVersion">
	The WFS_Capabilities/@version attribute must be present and indicate 1.1.0.
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
