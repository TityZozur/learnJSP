<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.javaBeans.UserListBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="ulb" class="web.javaBeans.UserListBean" scope="session"/>

<h3>Hier werden die Urlaubsziele angezeigt</h3>

<form action="./A4bAppl.jsp" method="get">
	
	<textarea rows='10' cols='30'>
	<%=ulb.getAnzeigeHtml()%>	
	</textarea>
	
	<table>
		<tr><td><input type="submit" name="loeschen" value="loeschen"/></td>
			<td><input type="submit" name="eingeben" value="eingeben"/></td>
		</tr>
	</table>

</form>

</body>
</html>