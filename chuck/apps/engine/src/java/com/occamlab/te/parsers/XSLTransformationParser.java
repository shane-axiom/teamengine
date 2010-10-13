package com.occamlab.te.parsers;

import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import com.occamlab.te.Test;
import com.occamlab.te.util.DomUtils;

public class XSLTransformationParser {
	DocumentBuilder db = null;
	TransformerFactory tf = null;
	Templates defaultTemplates = null;
	HashMap<String, String> defaultProperties = null;
	HashMap<String, String> defaultParams = null;
	Boolean defaultIgnoreErrors;
	Boolean defaultIgnoreWarnings;
	
	private Source getSource(String reftype, String ref) throws Exception {
		if (reftype.equals("url")) {
            URL url = new URL(ref);
            return new StreamSource(url.openStream());
		} else if (reftype.equals("file")) {
            return new StreamSource(ref);
		} else if (reftype.equals("resource")) {
            ClassLoader cl = getClass().getClassLoader();
            URL url = cl.getResource(ref);
            return new StreamSource(url.getFile());
		}
		return null;
	}
	
	private Templates parseInstruction(Element instruction, HashMap<String, String> properties, HashMap<String, String> params, Boolean ignoreErrors, Boolean ignoreWarnings) throws Exception {
		Templates templates = null;
    	final String[] atts = {"url", "file", "resource"};
    	for (String att : atts) {
    		String val = instruction.getAttribute(att);
    		if (val != null) {
    			templates = tf.newTemplates(getSource(att, val));
    			break;
    		}
    	}
		Element stylesheet = DomUtils.getElementByTagNameNS(instruction, Test.XSL_NS, "stylesheet");
		if (stylesheet == null) {
			stylesheet = DomUtils.getElementByTagNameNS(instruction, Test.XSL_NS, "transform");
		}
		if (stylesheet != null) {
			templates = tf.newTemplates(new DOMSource(stylesheet));
		}
		List<Element> children = DomUtils.getChildElements(instruction);
		for (Element e : children) {
			if (e.getNodeName().equals("property")) {
				properties.put(e.getAttribute("name"), e.getTextContent());
			}
			if (e.getNodeName().equals("param")) {
				params.put(e.getAttribute("name"), e.getTextContent());
			}
		}
    	String ignoreErrorsAtt = instruction.getAttribute("ignoreErrors");
    	if (ignoreErrorsAtt != null) {
    		ignoreErrors = Boolean.parseBoolean(ignoreErrorsAtt);
		}
		String ignoreWarningsAtt = instruction.getAttribute("ignoreWarnings");
		if (ignoreWarningsAtt != null) {
			ignoreWarnings = Boolean.parseBoolean(ignoreWarningsAtt);
		}
		return templates;
	}
	
	public XSLTransformationParser() throws Exception {
		db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		tf = TransformerFactory.newInstance();
		defaultProperties = new HashMap<String, String>();
		defaultParams = new HashMap<String, String>();
		defaultIgnoreErrors = new Boolean(false);
		defaultIgnoreWarnings = new Boolean(true);
	}

	public XSLTransformationParser(Node node) throws Exception {
		super();
		defaultTemplates = parseInstruction(DomUtils.getElement(node), defaultProperties, defaultParams, defaultIgnoreErrors, defaultIgnoreWarnings);
	}

	public XSLTransformationParser(String reftype, String ref) throws Exception {
		super();
		defaultTemplates = tf.newTemplates(getSource(reftype, ref));
	}

    public Document parse(URLConnection uc, Element instruction, PrintWriter logger) throws Exception {
    	HashMap<String, String> properties = new HashMap<String, String>();
    	properties.putAll(defaultProperties);
    	HashMap<String, String> params = new HashMap<String, String>();
    	params.putAll(defaultParams);
    	Boolean ignoreErrors = defaultIgnoreErrors;
    	Boolean ignoreWarnings = defaultIgnoreWarnings;
    	Templates templates = parseInstruction(instruction, properties, params, ignoreErrors, ignoreWarnings);
		Transformer t = null;
		if (templates != null) {
			t = templates.newTransformer();
		} else if (defaultTemplates != null) {
			t = defaultTemplates.newTransformer();
		} else {
			t = tf.newTransformer();
		}
    	XSLTransformationErrorHandler el = new XSLTransformationErrorHandler(logger, ignoreErrors, ignoreWarnings);
    	t.setErrorListener(el);
    	Document doc = db.newDocument();
    	try {
    		t.transform(new StreamSource(uc.getInputStream()), new DOMResult(doc));
    	} catch (Exception e) {
    	}
    	if (el.getErrorCount() > 0 && !ignoreErrors) {
    		return null;
    	}
    	if (el.getWarningCount() > 0 && !ignoreWarnings) {
    		return null;
    	}
    	return doc;
	}
}
