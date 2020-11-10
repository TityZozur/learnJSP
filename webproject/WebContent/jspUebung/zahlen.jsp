<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.Random"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int zahl = 13;	
String praefix = "erst kommt die ";
String prfix = "dann kommt die "; 
%>

<table style="width:100%;">
	<tr>
		<td width="30%"><h3>Hier kommen 13 zahlen in einer<br/>Tabelle</h3></td>
		<td><h3>und hier in einer<br/>Liste</h3></td>
	</tr>
	<tr>
		<td>
			<table border="1">
<%
	String string = praefix;
	for (int i = 1; i <= zahl; i++) {
		if (i != 1) string = prfix;
		out.print("<tr><td>" + string + "</td><td>" + i + "</td></tr>");
		
	}
%>	
				<tr><td colspan="2">dann ist die Tabelle fertig</td></tr>		
			</table>
		</td>
		
		<td>
			<ul>
<%
	for (int i = 1; i <= zahl; i++) {
		if (i != 1) praefix = prfix;
		out.print("<li>" + praefix + i + "</li>");
} %>					
			</ul>
		</td>
	</tr>
</table>

</body>
</html>