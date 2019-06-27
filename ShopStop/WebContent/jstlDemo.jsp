<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL core tag example</title>
</head>
<body>
<c:out value="${'Hello World'}"/>  
<br>
 Sum of 10 and 20 = <c:out value="${10+20}"/>
 <br/><br/>
<c:set var="num" value="100"/>
		<c:if test="${num > 0}">
			Num = <c:out value="${num}"/>
		</c:if>
<br/><br/>
Table of 2. <br/>
		<c:forEach var="i" begin="1" end="10">
   			<c:out value="${i*2}"/><p>
		</c:forEach>
		
<br>
<br>
<c:catch var ="exception">
   			<% int x = 10/0;%>
		</c:catch>
 
		<c:if test = "${exception != null}">
		   Occurred exception is : ${exception}
		</c:if>
		
	<br>
	<br>
	<c:set var="testString" 
                    value="Hello this is a JSTL function example."/>
		Length of the given string: <br/>
		<c:out value="${fn:length(testString)}" />
</body>
</html>