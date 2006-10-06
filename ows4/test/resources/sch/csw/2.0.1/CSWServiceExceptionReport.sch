<?xml version="1.0" encoding="UTF-8"?>
<sch:schema id="csw.ExceptionReport" 
defaultPhase="Default" 
version="1.5" 
xmlns="http://www.ascc.net/xml/schematron" 
xmlns:sch="http://www.ascc.net/xml/schematron" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://www.ascc.net/xml/schematron
  http://www.ascc.net/xml/schematron/schematron1-5.xsd">
  
	<sch:title>Assertions regarding service exception reports.</sch:title>
	
	<sch:ns prefix="ows" uri="http://www.opengis.net/ows"/>
	
	<sch:p xml:lang="en">
  Checks patterns in a response entity containing an ExceptionReport.
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

	<sch:phase id="NoApplicableCode">
		<sch:active pattern="required"/>
		<sch:active pattern="noApplicableCodeException"/>
	</sch:phase>

	<sch:phase id="OperationNotSupprted">
		<sch:active pattern="required"/>
		<sch:active pattern="operationNotSupportedException"/>
	</sch:phase>

	<sch:pattern id="required" name="Required elements">
		<sch:p xml:lang="en">
	Checks for required elements.
		</sch:p>
		<sch:rule id="docElement" context="/">
			<sch:assert id="ExceptionReport" test="ows:ExceptionReport" diagnostics="includedDocElem">
	The document element must have [local name] = "ExceptionReport" and [namespace name] = "http://www.opengis.net/ows".
		    </sch:assert>
		</sch:rule>
	</sch:pattern>

	<sch:pattern id="missingParameterValueException" name="missingParameterValueException">
		<sch:p xml:lang="en">
    Checks for the correct exception code and locator when a MissingParameterValue exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.MissingParameterValue" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.MissingParameterValue.code" test="ows:ServiceException/@exceptionCode='MissingParameterValue'">
	The ExceptionReport must have the exceptionCode value of 'MissingParameterValue'.
            </sch:assert>
			<sch:assert id="ExceptionReport.MissingParameterValue.locator" test="ows:ServiceException/@locator='service'">
	The ExceptionReport must have the locator value of the missing parameter ('service').
            </sch:assert>            
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="invalidParameterValueException" name="invalidParameterValueException">
		<sch:p xml:lang="en">
    Checks for the correct exception code and locator when a InvalidParameterValue exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.InvalidParameterValue" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.InvalidParameterValue.code" test="ows:ServiceException/@exceptionCode='InvalidParameterValue'">
	The ExceptionReport must have the exceptionCode value of 'InvalidParameterValue'.
            </sch:assert>
			<sch:assert id="ExceptionReport.InvalidParameterValue.locator" test="ows:ServiceException/@locator='service'">
	The ExceptionReport must have the locator value of the invalid parameter ('service').
            </sch:assert>            
		</sch:rule>
	</sch:pattern>	
	
	<sch:pattern id="versionNegotiationFailedException" name="versionNegotiationFailedException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a VersionNegotiationFailed exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.VersionNegotiationFailed" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.VersionNegotiationFailed.code" test="ows:ServiceException/@exceptionCode='VersionNegotiationFailed'">
	The ExceptionReport must have the exceptionCode value of 'VersionNegotiationFailed'.
            </sch:assert>    
		</sch:rule>
	</sch:pattern>		

	<sch:pattern id="invalidUpdateSequenceException" name="invalidUpdateSequenceException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a InvalidUpdateSequence exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.InvalidUpdateSequence" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.InvalidUpdateSequence.code" test="ows:ServiceException/@exceptionCode='InvalidUpdateSequence'">
	The ExceptionReport must have the exceptionCode value of 'InvalidUpdateSequence'.
            </sch:assert>    
		</sch:rule>
	</sch:pattern>	

	<sch:pattern id="noApplicableCodeException" name="noApplicableCodeException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a NoApplicableCode exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.NoApplicableCode" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.NoApplicableCode.code" test="ows:ServiceException/@exceptionCode='NoApplicableCode'">
	The ExceptionReport must have the exceptionCode value of 'NoApplicableCode'.
            </sch:assert>    
		</sch:rule>
	</sch:pattern>	

	<sch:pattern id="operationNotSupportedException" name="operationNotSupportedException">
		<sch:p xml:lang="en">
    Checks for the correct exception code when a OperationNotSupported exception is raised.
    </sch:p>
		<sch:rule id="ExceptionReport.OperationNotSupported" context="ows:ExceptionReport">
			<sch:assert id="ExceptionReport.OperationNotSupported.code" test="ows:ServiceException/@exceptionCode='OperationNotSupported'">
	The ExceptionReport must have the exceptionCode value of 'OperationNotSupported'.
            </sch:assert>    
			<sch:assert id="ExceptionReport.OperationNotSupported.locator" test="ows:ServiceException/@locator='Transaction'">
	The ExceptionReport must have the locator value of the not supported operation ('Transaction').
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
