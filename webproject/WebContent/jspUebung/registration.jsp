<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
	<table>
		<tr><th>Register page</th></tr>
		<tr>
			<td>User name</td>
			<td><input type="text" name="username" value="" placeholder="enter name"></input></td>
		</tr>
		<tr></tr>
<%
String name = "";
String[] values;
Enumeration<String> names = request.getParameterNames();
while(names.hasMoreElements()){
	name = names.nextElement();
	values = request.getParameterValues(name);
	for (String value: values){
		out.print("<tr><td>HeaderName: " + name + ", Wert: " + value + "</td></tr>");
	}
}
/* response.sendRedirect("./Reg.jsp"); */
%>		
	</table>
</form>
</body>
</html>