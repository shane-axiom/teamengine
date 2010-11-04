<ctl:package
 xmlns:ctl="http://www.occamlab.com/ctl"
 xmlns:ctlp="http://www.occamlab.com/te/parsers"
 xmlns:wms="http://www.opengis.net/wms"
 xmlns:wms_c="urn:wms_client_test_suite"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xhtml="http://www.w3.org/1999/xhtml"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <ctl:suite name="wms_c:suite">
        <ctl:title>Partial WMS Client Test Suite</ctl:title>
        <ctl:description>Validates WMS Client Requests.</ctl:description>
        <ctl:starting-test>wms_c:main</ctl:starting-test>
        <ctl:form>
            <xsl:text>Enter the Capabilities URL:</xsl:text>
            <xhtml:br/>
            <xhtml:input name="capabilities-url" size="100" type="text" value=""/>
            <xhtml:br/>
            <xhtml:input type="submit" value="OK"/>
        </ctl:form>
    </ctl:suite>

    <ctl:test name="wms_c:main">
        <ctl:param name="capabilities-url"/>
        <ctl:assertion>The WMS client is valid.</ctl:assertion>
        <ctl:code>
            <xsl:variable name="capabilities">
                <ctl:request>
                    <ctl:url>
                        <xsl:value-of select="$capabilities-url"/>
                    </ctl:url>
                </ctl:request>
            </xsl:variable>

            <xsl:variable name="monitor-urls">
                <xsl:for-each select="$capabilities/wms:WMS_Capabilities/wms:Capability/wms:Request">
                    <xsl:for-each select="wms:GetCapabilities|wms:GetMap|wms:GetFeatureInfo">
                        <xsl:copy>
                            <ctl:allocate-monitor-url>
                                <xsl:value-of select="wms:DCPType/wms:HTTP/wms:Get/wms:OnlineResource/@xlink:href"/>
                            </ctl:allocate-monitor-url>
                        </xsl:copy>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:variable>
            
            <ctl:create-monitor>
                <ctl:url>
                    <xsl:value-of select="$monitor-urls/wms:GetCapabilities"/>
                </ctl:url>
                <ctl:triggers-test name="wms_c:check-GetCapabilities-request"/>
                <ctl:with-parser pass-through="true">
                    <ctlp:XSLTransformationParser resource="rewrite-capabilities.xsl">
                        <ctlp:param name="GetCapabilities-proxy">
                            <xsl:value-of select="$monitor-urls/wms:GetCapabilities"/>
                        </ctlp:param>
                        <ctlp:param name="GetMap-proxy">
                            <xsl:value-of select="$monitor-urls/wms:GetMap"/>
                        </ctlp:param>
                        <ctlp:param name="GetFeatureInfo-proxy">
                            <xsl:value-of select="$monitor-urls/wms:GetFeatureInfo"/>
                        </ctlp:param>
                    </ctlp:XSLTransformationParser>
                </ctl:with-parser>
            </ctl:create-monitor>

            <ctl:create-monitor>
                <ctl:url>
                    <xsl:value-of select="$monitor-urls/wms:GetMap"/>
                </ctl:url>
                <ctl:triggers-test name="wms_c:check-GetMap-request"/>
                <ctl:with-parser>
                    <ctlp:NullParser/>
                </ctl:with-parser>
            </ctl:create-monitor>

            <ctl:create-monitor>
                <ctl:url>
                    <xsl:value-of select="$monitor-urls/wms:GetFeatureInfo"/>
                </ctl:url>
                <ctl:triggers-test name="wms_c:check-GetFeatureInfo-request"/>
                <ctl:with-parser>
                    <ctlp:NullParser/>
                </ctl:with-parser>
            </ctl:create-monitor>

            <ctl:form>
                <xsl:text>Configure the Client to use this URL:</xsl:text>
                <xhtml:br/>
                <xsl:value-of select="$monitor-urls/wms:GetCapabilities"/>
                <xhtml:br/>
                <xhtml:br/>
                <xsl:text>Leave this form open while you use the client.</xsl:text>
                <xhtml:br/>
                <xsl:text>Press the button when you are finished.</xsl:text>
                <xhtml:br/>
                <xhtml:input type="submit" value="Done Testing"/>
            </ctl:form>
        </ctl:code>
    </ctl:test>

    <ctl:test name="wms_c:check-GetCapabilities-request">
        <ctl:param name="request"/>
        <ctl:param name="response"/>
        <ctl:assertion>The client GetCapabilities request is valid.</ctl:assertion>
        <ctl:code>
            <ctl:call-test name="wms_c:service-param">
                <ctl:with-param name="request" select="$request"/>
            </ctl:call-test>
        </ctl:code>
    </ctl:test>

    <ctl:test name="wms_c:check-GetMap-request">
        <ctl:param name="request"/>
        <ctl:param name="response"/>
        <ctl:assertion>The client GetMap request is valid.</ctl:assertion>
        <ctl:code>
            <ctl:call-test name="wms_c:service-param">
                <ctl:with-param name="request" select="$request"/>
            </ctl:call-test>
        </ctl:code>
    </ctl:test>

    <ctl:test name="wms_c:check-GetFeatureInfo-request">
        <ctl:param name="request"/>
        <ctl:param name="response"/>
        <ctl:assertion>The client GetFeatureInfo request is valid.</ctl:assertion>
        <ctl:code>
            <ctl:call-test name="wms_c:service-param">
                <ctl:with-param name="request" select="$request"/>
            </ctl:call-test>
        </ctl:code>
    </ctl:test>

    <ctl:test name="wms_c:service-param">
        <ctl:param name="request"/>
        <ctl:assertion>The client request contains a service parameter.</ctl:assertion>
        <ctl:code>
            <xsl:if test="not($request/ctl:param[@name='SERVICE'])">
                <ctl:fail/>
            </xsl:if>
        </ctl:code>
    </ctl:test>
</ctl:package>
