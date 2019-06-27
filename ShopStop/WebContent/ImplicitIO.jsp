<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Implicit Objects- IO</title>
</head>
<body>
<h1> Implicit Out Object</h1>
<%out.println("Today is :"+java.util.Calendar.getInstance().getTime());
int size = out.getBufferSize();
int availsize = out.getRemaining();
int usedsize = size - availsize;
%>
<b>Buffering Status:</b><br/>
        <b>Total Size: </b><%=size %><br/>
        <b>Available Size: </b><%=availsize %><br/>
        <b>Used Size: </b><%=usedsize %><br/>

</body>
</html>