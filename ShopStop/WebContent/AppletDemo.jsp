<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Using the Java Plugin</title>
</head>
<body>
<h4>Applet running in the plugin</h4>
<jsp:plugin type="applet" code="TimeApplet" codebase="." archive="JspApplet.jar"
            width="500"
            height="500"
            jreversion="1.8">
     <jsp:params>
          <jsp:param name="font" value="SansSerif" />
          <jsp:param name="fsize" value="12" />
          <jsp:param name="image" value="Menu.gif"/>
     </jsp:params>
 
     <jsp:fallback>
          <B>Unable to start plugin!</B>
     </jsp:fallback>
 
</jsp:plugin>
</body>
</html>