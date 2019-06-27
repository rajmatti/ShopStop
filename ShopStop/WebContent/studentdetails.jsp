<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/WEB-INF/customTag.tld" prefix="ct" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Student Info</h1>
<h3>
Student Name is :<ct:changeCase case="upper"> ${param.studentName}</ct:changeCase> <br>
Student Roll Number is : ${param.rollNo}
</h3>
</body>
</html>