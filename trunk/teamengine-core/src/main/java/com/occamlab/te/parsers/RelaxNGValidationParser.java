package com.occamlab.te.parsers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import javax.xml.XMLConstants;
import javax.xml.transform.Result;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.SAXException;

import com.thaiopensource.relaxng.util.ValidationEngine;

public class RelaxNGValidationParser {
	
	public static void main2(String[] args) throws UnsupportedEncodingException,
	FileNotFoundException, SAXException, IOException {
		String rng = "/Users/lbermudez/Documents/Dropbox/workspace/ets/testng/ets-owc/trunk/src/main/resources/org/opengis/cite/owc/rnc/owc10.rnc";
		String xml = "/Users/lbermudez/Documents/Dropbox/workspace/ets/testng/ets-owc/trunk/src/main/resources/atom-feed.xml";
		
		System.setProperty(SchemaFactory.class.getName() + ":"
				+ XMLConstants.RELAXNG_NS_URI,
				"com.thaiopensource.relaxng.jaxp.CompactSyntaxSchemaFactory");
		
	
		
	}
	

	public static void main(String[] args) throws UnsupportedEncodingException,
			FileNotFoundException, SAXException, IOException {
		// make sure our jars are on classpath
		System.out.println("Classpath: "
				+ System.getProperty("java.class.path"));

		// args
		//String rng = args[0];
		//String xml = args[1];
		String rng = "/Users/lbermudez/Documents/Dropbox/workspace/ets/testng/ets-owc/trunk/src/main/resources/org/opengis/cite/owc/rnc/owc10.rnc";
		String xml = "/Users/lbermudez/Documents/Dropbox/workspace/ets/testng/ets-owc/trunk/src/main/resources/atom-feed.xml";
		
		
		File rngFile = new File(rng);
		File xmlFile = new File(xml);

		// setup rng validator through JAXP
		System.setProperty(SchemaFactory.class.getName() + ":"
				+ XMLConstants.RELAXNG_NS_URI,
				"com.thaiopensource.relaxng.jaxp.CompactSyntaxSchemaFactory");
		SchemaFactory rngSchemaFactory = SchemaFactory
				.newInstance(XMLConstants.RELAXNG_NS_URI);
		//rngSchemaFactory.setProperty("http://relaxng.org/properties/datatype-library-factory", 
		//		new org.relaxng.datatype.helpers.DatatypeLibraryLoader());
		

		
		// obtain a schema object
		InputStreamReader rngReader = new InputStreamReader(
				new FileInputStream(rngFile), "UTF-8");
	
		Schema schema = rngSchemaFactory.newSchema(new StreamSource(rngReader));
		

		// validate using schema based validator
		Validator validator = schema.newValidator();
		
		
		
		InputStreamReader xmlReader = new InputStreamReader(
				new FileInputStream(xmlFile), "UTF-8");

		File file = new File ("/Users/lbermudez/Desktop/results.txt");
		StreamResult result = new StreamResult(file);
		validator.validate(new StreamSource(xmlReader),result);
		result.notify();
	
		System.out.println(result.toString());
	}

}
