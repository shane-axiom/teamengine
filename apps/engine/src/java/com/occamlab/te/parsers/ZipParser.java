package com.occamlab.te.parsers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.InputStream;
import java.net.URLConnection;

import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream .StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.occamlab.te.TECore;

/**
* Parses a zip file input by extracting the contents to the java temp directory
* and returning a manifest describing the files as follows:
*
* <ctl:manifest xmlns:ctl="http://www.occamlab.com/ctl">
*    <ctl:file-entry 
*    full-path="${java.io.temp}/dir/doc.kml" 
*    size="2048" />
* </ctl:manifest>
*
* @author jparrpearson
*/
public class ZipParser {
	
	public static final String PARSERS_NS = "http://www.occamlab.com/te/parsers";
	public static final String CTL_NS = "http://www.occamlab.com/ctl";

	/**
	 * Parse function called within the <ctl:request> element
	 */
	public static Document parse(URLConnection uc, Element instruction, PrintWriter logger, TECore core) throws Throwable {
		uc.connect();

		// Create the response element, <ctl:manifest>
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document doc = db.newDocument();
		Element root = doc.createElementNS(CTL_NS, "manifest");

		// Open the connection to the zip file
		InputStream is = uc.getInputStream();
		ZipInputStream zis = new ZipInputStream(is);
		
		String directory = "zipparser.temp";
		new File(System.getProperty("java.io.tmpdir") + directory).mkdir();
		
		// Unzip the file to a temporary location (java temp)
		ZipEntry entry = null;
		while ((entry = zis.getNextEntry()) != null) {
		        // Open the output file
		        String filename = entry.getName();
		        long size = entry.getSize();
		        // Make the temp directory and subdirectories if needed
		        String subdir = "";
		        if (filename.lastIndexOf("/") != -1) subdir = filename.substring(0,filename.lastIndexOf("/"));
		        else if (filename.lastIndexOf("\\") != -1) subdir = filename.substring(0,filename.lastIndexOf("\\"));
		        new File(System.getProperty("java.io.tmpdir") + directory + "/" + subdir).mkdir();
		        File outFile = new File(System.getProperty("java.io.tmpdir") + directory, filename);
		        if (outFile.isDirectory()) continue;
		        OutputStream out = new FileOutputStream(outFile);

		        // Transfer bytes from the ZIP file to the output file
		        byte[] buf = new byte[1024];
		        int len;
		        while ((len = zis.read(buf)) > 0) {
		            out.write(buf, 0, len);
		        }

			// Add the file information to the document
		        Element fileEntry = doc.createElementNS(CTL_NS, "file-entry");
		        fileEntry.setAttribute("full-path", outFile.getPath().replace('\\','/'));
		        fileEntry.setAttribute("size", String.valueOf(size));
		        root.appendChild(fileEntry);
		}

		doc.appendChild(root);
				
		// TEMP: Print the document to stdout		
		//Transformer t = TransformerFactory.newInstance().newTransformer();
		//t.transform(new DOMSource(doc), new StreamResult(System.out));
		
		// Return the <ctl:manifest> document
		return doc;
	}
}
