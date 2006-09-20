<?xml version="1.0" encoding="UTF-8"?>
<sch:schema id="csw.ServiceExceptionReport" 
defaultPhase="Default" 
version="1.5" 
xmlns="http://www.ascc.net/xml/schematron" 
xmlns:sch="http://www.ascc.net/xml/schematron" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://www.ascc.net/xml/schematron
  http://www.ascc.net/xml/schematron/schematron1-5.xsd">
  
	<sch:title>Assertions regarding service exception reports.</sch:title>
	
	<sch:ns prefix="ogc" uri="http://www.opengis.net/ogc"/>
	
	<sch:p xml:lang="en">
  Checks patterns in a response entity containing a ServiceExceptionReport.
  </sch:p>
  
	<sch:phase id="Default">
		<sch:active pattern="required"/>
	</sch:phase>

	<sch:phase id="MissingParameterValue">
		<sch:active pattern="required"/>
		<sch:active pattern="missingParameterValueException"/>
	</sch:phase>

	<sch:phase id="InvalidParameterValue">
		<sch:active pattern="required"/>
		<sch:active pattern="invalidParameterValueException"/>
	</sch:phase>

	<sch:phase id="VersionNegotiationFailed">
		<sch:active pattern="required"/>
		<sch:active pattern="versionNegotiationFailedException"/>
	</sch:phase>

	<sch:phase id="InvalidUpdateSequence">
		<sch:active pattern="required"/>
		<sch:active pattern="invalidUpdateSequenceException"/>
	</sch:phase>
	
	<sch:pattern id="required" name="Required elements">
		<sch:p xml:lang="en">
	Checks for required elements.
		</sch:p>
		<sch:rule id="docElement" context="/">
			<sch:assert id="ServiceExceptionReport" test="ogc:ServiceExceptionReport" diagnostics="includedDocElem">
	The document element must have [local name] = "ServiceExceptionReport" and [namespace name] = "http://www.opengis.net/ogc".
		    </sch:assert>
		</sch:rule>
	</sch:pattern>

	<sch:pattern id="missingParameterValueException" name="missingParameterValueException">
		<sch:p xml:lang="en">
    Checks for the correct exception code and locator when a MissingParameterValue exception is raised.
    </sch:p>
		<sch:rule id="ServiceExceptionReport.MissingParameterValue" context="ogc:ServiceExceptionReport">
			<sch:assert id="ServiceExceptionReport.MissingParameterValue.code" test="ogc:ServiceException/@code='MissingParameterValue'">
	The ServiceExceptionReport must have the code value of 'MissingParameterValue'.
            </sch:assert>
			<sch:assert id="ServiceExceptionReport.MissingParameterValue.locator" test="ogc:ServiceException/@locator='service'">
	The ServiceExceptionReport must have the locator value of the missing parameter ('service').
            </sch:assert>            
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="invalidParameterValueException" name="invalidParameterValueException">
		<sch:p xml:lang="en">
    Checks for the correct exception code and locator when a InvalidParameterValue exception is raised.
    </sch:p>
		<sch:rule id="ServiceExceptionReport.InvalidParameterValue" context="ogc:ServiceExceptionReport">
			<sch:assert id="ServiceExceptionReport.InvalidParameterValue.code" test="ogc:ServiceException/@code='InvalidParameterValue'">
	The ServiceExceptionReport must have the code value of 'InvalidParameterValue'.
            </sch:assert>
			<sch:assert id="ServiceExceptionReport.InvalidParameterValue.locator" test="ogc:ServiceException/@locator='service'">
	The ServiceExceptionReport must have the locator value of the invalid parameter ('service').
            </sch:assert>            
		</sch:rule>
	</sch:pattern>	
	
	<sch:pattern id="versionNegotiationFailedException" name="versionNegotiationFailedException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a VersionNegotiationFailed exception is raised.
    </sch:p>
		<sch:rule id="ServiceExceptionReport.VersionNegotiationFailed" context="ogc:ServiceExceptionReport">
			<sch:assert id="ServiceExceptionReport.VersionNegotiationFailed.code" test="ogc:ServiceException/@code='VersionNegotiationFailed'">
	The ServiceExceptionReport must have the code value of 'VersionNegotiationFailed'.
            </sch:assert>    
		</sch:rule>
	</sch:pattern>		

	<sch:pattern id="invalidUpdateSequenceException" name="invalidUpdateSequenceException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a InvalidUpdateSequence exception is raised.
    </sch:p>
		<sch:rule id="ServiceExceptionReport.InvalidUpdateSequence" context="ogc:ServiceExceptionReport">
			<sch:assert id="ServiceExceptionReport.InvalidUpdateSequence.code" test="ogc:ServiceException/@code='InvalidUpdateSequence'">
	The ServiceExceptionReport must have the code value of 'InvalidUpdateSequence'.
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
