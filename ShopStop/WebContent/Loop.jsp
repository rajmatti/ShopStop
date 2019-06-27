<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int[] a=new int[10];
a[0] = 0;
a[1] = 1;
int n=10;
for(int j=2; j<n; j++) {
a[j] = a[j-1] + a[j-2];
out.println(a[j]);
}
application.setAttribute("country", String.valueOf(request.getLocale()));
out.println("<b>Locale:</b>"+application.getAttribute("country"));
%>
</body>
</html>