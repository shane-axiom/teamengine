package com.occamlab.te.web;

import org.w3c.dom.Element;

import com.occamlab.te.TECore;

import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.NodeInfo;

public class MonitorCall {
    XPathContext context;
    String url;
    String localName;
    String NamespaceURI;
    Element params;
    String callId;
    Element parserInstruction;
    boolean passThrough;
    TECore core;

    MonitorCall(String url) {
        setUrl(url);
/*
    MonitorCall(XPathContext context, String url, String localName, String NamespaceURI, String callId) {
        setContext(context);
        setLocalName(localName);
        setNamespaceURI(NamespaceURI);
        setCallId(callId);
        setParams(null);
        setParserInstruction(null);
*/
    }

    public XPathContext getContext() {
        return context;
    }

    public void setContext(XPathContext context) {
        this.context = context;
    }

    public String getCallId() {
        return callId;
    }

    public void setCallId(String callId) {
        this.callId = callId;
    }

    public String getLocalName() {
        return localName;
    }

    public void setLocalName(String localName) {
        this.localName = localName;
    }

    public String getNamespaceURI() {
        return NamespaceURI;
    }

    public void setNamespaceURI(String namespaceURI) {
        NamespaceURI = namespaceURI;
    }

    public Element getParams() {
        return params;
    }

    public void setParams(Element params) {
        this.params = params;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Element getParserInstruction() {
        return parserInstruction;
    }

    public void setParserInstruction(Element parserInstruction) {
        this.parserInstruction = parserInstruction;
    }

	public boolean isPassThrough() {
		return passThrough;
	}

	public void setPassThrough(boolean passThrough) {
		this.passThrough = passThrough;
	}

	public TECore getCore() {
		return core;
	}

	public void setCore(TECore core) {
		this.core = core;
	}
}
