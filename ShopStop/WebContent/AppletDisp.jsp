<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome JSP-Applet Page</title>
</head>
<body>
<jsp:plugin type="applet" code="ButtonMoveApplet.class" codebase="com.niit.emirates"
  width="400" height="400">
  <jsp:fallback>
   <p>Unable to load applet</p>
   </jsp:fallback>
</jsp:plugin>
</body>
</html>