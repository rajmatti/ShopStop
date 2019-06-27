<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="studentdetails.jsp">
Student Name : <input type="text" name="studentName">
<br>
Student Roll No: <input type="text" name="rollNo">
<br>
<input type="submit" value="Click Here to Submit">
</form>
        <h1>Testing</h1>
        <%
        int a[]=new a[10];
        a[0] = 0;
        a[1] = 1;
        int n=10;
        
        for(int j=2; j<n; j++) {
            a[j] = a[j-1] + a[j-2];
            out.println(a[j]);
        }
        %>

</body>
</html>