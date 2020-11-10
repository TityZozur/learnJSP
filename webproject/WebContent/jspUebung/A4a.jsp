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

<h3>Hier können Urlaubsziele eingegeben werden:</h3>

<form action="./A4bAppl.jsp" method="get">
	<table>
		<tr><td>Urlaubsziel:</td><td><input type="text" name="ziel" value=""/></td></tr>
		<tr><td>Bewertung:</td><td><input type="text" name="bewertung" value=""/></td></tr>
		<tr><td></td><td colspan="1"><input type="submit" name="anzeigen" value="alle anzeigen"/></td></tr>		
	</table>
</form>

</body>
</html>