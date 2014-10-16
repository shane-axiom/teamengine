package com.occamlab.te.spi.jaxrs.resources;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.List;
import java.util.Stack;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * A controller resource that provides the results of a test run. An XML
 * representation of the results is obtained using HTTP/1.1 methods in accord
 * with the JAX-RS 1.1 specification (JSR 311).
 *
 * @see <a href="http://jcp.org/en/jsr/detail?id=311">JSR 311</a>
 */
@Path("suiteJson")
@Produces("application/json")
public class TempRunResources {

    @GET
    public String handleGet(
            @QueryParam("userID") String userId,
            @QueryParam("sessionID") String sessionID) throws IOException, JSONException {
        JSONObject jsonObj = new JSONObject();
        JSONArray jsonArr = new JSONArray();
        String basePath = System.getProperty("TE_BASE");
        if (null == basePath) {
            basePath = System.getenv("TE_BASE");
        }
        String pathAddress = basePath+"/users/" + userId + "/" + sessionID;
        int count = 1;
        int objectID = 1;
        Stack stack = new Stack();
        Stack stack1 = new Stack();
        Stack stack2 = new Stack();
        try {
            InputStream in = new FileInputStream(new File(pathAddress + "/test_result.txt"));
            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
            String line;
            while ((line = reader.readLine()) != null) {
                JSONObject obj = new JSONObject(line);
                String str = (String) obj.get("Result");
                if ("".equals(str)) {
                    stack.push(count + " " + obj.get("Name"));
                    count++;
                } else {
                    while (stack.peek().toString().contains("Passed") || stack.peek().toString().contains("Failed")) {
                        stack1.push(stack.peek());
                        stack.pop();
                    }
                    count--;
                    stack.pop();
                    stack.push(count + "  Name :" + obj.get("Name") + "  Result :" + obj.get("Result"));
                    while (!stack1.isEmpty()) {
                        stack.push(stack1.peek());
                        stack1.pop();
                    }
                }
            }
            int num1 = 1;
            int parentID = 1;
            int no = 1;
            try {
                for (int j = 0; j < stack.size(); j++) {
                    Object object = stack.get(j);
                    no = Integer.parseInt(object.toString().split(" ")[0]);
                    String INDENT = "   ";
                    String indent = "";
                    for (int i = 1; i < no; i++) {
                        indent = indent + INDENT;
                    }
                    if (num1 < no) {
                        stack2.push(objectID);
                        num1 = no;
                    }
                    if (num1 > no) {
                        while (num1 - no > 0) {
                            if (!stack2.isEmpty()) {
                                stack2.pop();
                            }
                            num1--;
                        }
                    }
                    if (no == 1) {
                        parentID = 0;
                    }
                    if (!stack2.isEmpty()) {
                        parentID = ((Integer) stack2.peek()) - 1;
                    }
                    if(no==1){
                        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                        factory.setNamespaceAware(true);
                        DocumentBuilder builder = factory.newDocumentBuilder();
                        Document doc = builder.newDocument();
                        Element execution = doc.createElement("execution");
                        doc.appendChild(execution);
                        TransformerFactory xformFactory = TransformerFactory.newInstance();
                        Transformer idTransform = xformFactory.newTransformer();
                        Source input = new DOMSource(doc);
                            
                        if(object.toString().split(" ")[3].substring(1).equals("gc:check-GetCapabilities-request")){
                            File xml_logs_report_file = new File(pathAddress,"WMS1-GetCapabilities.xml");
                            OutputStream report_logs = new FileOutputStream(xml_logs_report_file);
                            Result output = new StreamResult(report_logs);
                            idTransform.transform(input, output);


                        }
                        if(object.toString().split(" ")[3].substring(1).equals("gm:check-GetMap-request")){
                            File xml_logs_report_file = new File(pathAddress,"WMS1-GetMap.xml");
                            OutputStream report_logs = new FileOutputStream(xml_logs_report_file);
                            Result output = new StreamResult(report_logs);
                            idTransform.transform(input, output);
                        }
                        if(object.toString().split(" ")[3].substring(1).equals("gfi:check-GetFeatureInfo-request")){
                            File xml_logs_report_file = new File(pathAddress,"WMS1-GetFeatureInfo.xml");
                            OutputStream report_logs = new FileOutputStream(xml_logs_report_file);
                            Result output = new StreamResult(report_logs);
                            idTransform.transform(input, output);
                        }
                    }
                    JSONObject obj = new JSONObject();
                    obj.put("Indent", no);
                    obj.put("Name", object.toString().split(" ")[3].substring(1));
                    obj.put("Result", object.toString().split(" ")[6].substring(1));
                    obj.put("ObjectID", objectID);
                    obj.put("ParentID", parentID);
                    jsonArr.put(obj);
                    objectID++;
                }
            } catch (JSONException e) {
                JSONObject obj = new JSONObject();
                obj.put("Result", e.toString());
            }
            for (int i = 1; i < jsonArr.length(); i++) {
                JSONObject data = jsonArr.getJSONObject(i);
                if (data.getString("Result").equals("Failed")) {
                    TempRunResources test = new TempRunResources();
                    test.update(data.getInt("ParentID"), jsonArr);
                }
            }
            jsonObj.put("TEST", jsonArr);
            return jsonObj.toString();
        } catch (Exception e) {
            JSONObject obj = new JSONObject();
            obj.put("File", "File Not Present");
            return obj.toString();
        }
    }

    public void update(int parentID, JSONArray jsonArr) throws JSONException {
        int id = parentID;
        while (jsonArr.getJSONObject(id - 1).getInt("ParentID") != 0) {
            jsonArr.getJSONObject(id - 1).put("Result", "Failed");
            id = jsonArr.getJSONObject(id - 1).getInt("ParentID");

        }
        if (jsonArr.getJSONObject(id - 1).getInt("ParentID") == 0) {
            jsonArr.getJSONObject(id - 1).put("Result", "Failed");
        }
    }

    @POST
    @Consumes("text/plain")
    //@Consumes("application/json")
    public List<JsonPOJO> handleGet(List<JsonPOJO> jsonPOJOs) {
        for (JsonPOJO pojo : jsonPOJOs) {
            System.out.println("Name: " + pojo.getName());
            System.out.println("Result: " + pojo.getResult());
        }
        return jsonPOJOs;

    }

}
