<%@ page
 language="java"
 session="false"
 import="javax.xml.parsers.*, javax.xml.transform.*, javax.xml.transform.dom.*, javax.xml.transform.stream.*, java.io.Writer, java.io.File, java.util.*, com.occamlab.te.*, com.occamlab.te.web.*, net.sf.saxon.dom.DocumentBuilderImpl, net.sf.saxon.FeatureKeys, net.sf.saxon.Configuration"
%><%!
Config Conf;
DocumentBuilderImpl DB;
Templates ViewLogTemplates;

public void jspInit() {
	try {
		Conf = new Config();
		DB = new DocumentBuilderImpl();      
		DB.setConfiguration((Configuration) ViewLog.transformerFactory.getAttribute(FeatureKeys.CONFIGURATION));        
		File stylesheet = Test.getResourceAsFile("com/occamlab/te/web/viewlog.xsl");
		ViewLogTemplates = ViewLog.transformerFactory.newTemplates(new StreamSource(stylesheet));
	} catch (Exception e) {
		e.printStackTrace(System.out);
	}
}
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  The contents of this file are subject to the Mozilla Public License
  Version 1.1 (the "License"); you may not use this file except in
  compliance with the License. You may obtain a copy of the License at
  http://www.mozilla.org/MPL/ 

  Software distributed under the License is distributed on an "AS IS" basis,
  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
  the specific language governing rights and limitations under the License. 

  The Original Code is TEAM Engine.

  The Initial Developer of the Original Code is Northrop Grumman Corporation
  jointly with The National Technology Alliance.  Portions created by
  Northrop Grumman Corporation are Copyright (C) 2005-2006, Northrop
  Grumman Corporation. All Rights Reserved.

  Contributor(s): No additional contributors to date

 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>			
		<title>Test Session Results</title>
		<script>
			function toggleAll(testnum, state) {
			  for (key in document.images) {
			    var image = document.images[key];
                            if (image.name) {
			      if (image.name.substring(0, 5 + testnum.length) == "image" + testnum) {
			        image.src = "images/" + (state ? "minus.png" : "plus.png");
                                var div = document.getElementById('test' + image.name.substring(5));
			        div.style.display = state ? "block" : "none";
			      }
			    }
			  }
			}

			function toggle(testnum, e) {
			  var evt = e || window.event;
			  if (document.images['image' + testnum].src.indexOf('minus') > 0) {
			    if (evt.ctrlKey) {
			      toggleAll(testnum, false);
			    } else {
			      document.images['image' + testnum].src = 'images/plus.png';
			      document.getElementById('test' + testnum).style.display = "none";
			    }
			  } else {
			    if (evt.ctrlKey) {
			      toggleAll(testnum, true);
			    } else {
			      document.images['image' + testnum].src = 'images/minus.png';
			      document.getElementById('test' + testnum).style.display = "block";
			    }
			  }
			}


			function deleteSession() {
				if (confirm("Are you sure you want to delete session <%=request.getParameter("session")%>?")) {
					window.location = "deleteSession?session=<%=request.getParameter("session")%>"
				}
			}
		</script>		
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<h2>Results for session <%=request.getParameter("session")%></h2>
				
<%
      File userlog = new File(Conf.getUsersDir(), request.getRemoteUser());
      String sessionId = request.getParameter("session");
      ArrayList tests = new ArrayList();    
      boolean complete = ViewLog.view_log(DB, userlog, sessionId, tests, ViewLogTemplates, out);     
      out.println("<br/>");
      if (!complete) {
        out.println("<input type=\"button\" value=\"Resume executing this session\" onclick=\"window.location = 'test.jsp?mode=resume&amp;session=" + sessionId + "'\"/>");
      }
%>
		<input type="button" value="Execute this session again" onclick="window.location = 'test.jsp?mode=retest&amp;session=<%=request.getParameter("session")%>'"/>
		<input type="button" value="Delete this session" onclick="deleteSession()"/>
		<br/>
		<br/>
		<table id="summary" border="0" bgcolor="#EEEEEE" width="410">
		<tr>
		<th align="left"><font color="#000099">Summary</font></th>
		<td align="right"><img src="images/pass.png" hspace="4"/>Pass:</td><td id="nPass" align="center" bgcolor="#00FF00"><%=ViewLog.passCount%></td>
		<td align="right"><img src="images/warn.png" hspace="4"/>Warning:</td><td id="nWarn" align="center" bgcolor="#FFFF00"><%=ViewLog.warnCount%></td>
		<td align="right"><img src="images/fail.png" hspace="4"/>Fail:</td><td id="nFail" align="center" bgcolor="#FF0000"><%=ViewLog.failCount%></td>
		</tr>
		</table>
		</br>		
		<a href="viewSessions.jsp"/>Sessions list</a>
		<%@ include file="footer.jsp" %>				
	</body>
</html>