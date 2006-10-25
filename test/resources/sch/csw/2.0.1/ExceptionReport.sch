<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" 
  defaultPhase="DefaultPhase" 
  version="1.5">
  
  <sch:title>Rules for exception reporting.</sch:title>
  
  <sch:ns prefix="ows" uri="http://www.opengis.net/ows"/>
  
  <sch:phase id="VersionNegotiationFailedPhase">
    <sch:active pattern="ExceptionReportPattern"/>
    <sch:active pattern="VersionNegotiationFailedPattern"/>
  </sch:phase>
  
  <sch:phase id="DefaultPhase">
    <sch:active pattern="ExceptionReportPattern"/>
  </sch:phase>

  <sch:pattern id="ExceptionReportPattern" name="ExceptionReportPattern">
    <sch:p xml:lang="en">Checks that the document is an OWS exception report.</sch:p>
    <sch:rule id="ExceptionReport" context="/">
      <sch:assert id="ExceptionReport.infoset" 
        test="ows:ExceptionReport"
        diagnostics="includedDocElem">
	The document element must have [local name] = "ExceptionReport" and [namespace name] = "http://www.opengis.net/ows".
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:pattern id="VersionNegotiationFailedPattern" name="VersionNegotiationFailedPattern">
    <sch:p xml:lang="en">Checks for the VersionNegotiationFailed exception code.</sch:p>
    <sch:rule id="VersionNegotiationFailed" context="/ows:ExceptionReport">
      <sch:assert id="VersionNegotiationFailed.code" 
        test="ows:Exception/@exceptionCode = 'VersionNegotiationFailed'"
        diagnostics="includedCode">
	The @exceptionCode attribute must have the value "VersionNegotiationFailed".
      </sch:assert>
    </sch:rule>
  </sch:pattern>
  
  <sch:diagnostics>
    <sch:diagnostic id="includedDocElem">
    The included document element has [local name] = <sch:value-of select="local-name(/*[1])"/> 
    and [namespace name] = <sch:value-of select="namespace-uri(/*[1])"/>.
    </sch:diagnostic>
    <sch:diagnostic id="includedCode">
    The included exception code is: <sch:value-of select="ows:Exception/@exceptionCode"/>.
    </sch:diagnostic>
  </sch:diagnostics>
</sch:schema>
