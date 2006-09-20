<?xml version="1.0" encoding="UTF-8"?>
<sch:schema id="CSW.Capabilities"
  defaultPhase="Default" 
  version="1.5" 
  xmlns:sch="http://www.ascc.net/xml/schematron">
  
  <sch:title>Patterns for CSW-2.0.1 capabilities documents</sch:title>
  
  <sch:ns prefix="csw" uri="http://www.opengis.net/cat/csw"/>
  <sch:ns prefix="ogc" uri="http://www.opengis.net/ogc"/>
  
  <sch:p xml:lang="en">
  Checks that a CSW-2.0.1 capabilities document is complete.
  </sch:p>
  
  <sch:phase id="Default">
    <sch:active pattern="topLevelElements"/>
  </sch:phase>
  
  <sch:pattern id="topLevelElements" name="topLevelElements" >
    <sch:p xml:lang="en">
    Verifies the presence all required top-level elements.
    </sch:p>
    <sch:rule id="docElement" context="/">
      <sch:assert id="Capabilities" 
        test="csw:Capabilities"
        diagnostics="includedDocElem">
	The document element must have [local name] = "Capabilities" and [namespace name] = "http://www.opengis.net/cat/csw".
      </sch:assert>
    </sch:rule>
    <sch:rule id="fullCapabilities" context="csw:Capabilities">
      <sch:assert id="Capabilities.version" 
        test="@version='2.0.1'"
        diagnostics="serviceVersion">
	The Capabilities/@version attribute must be present and indicate 2.0.1.
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
