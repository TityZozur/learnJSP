<%@page import="web.javaBeans.LiliBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lieblingsgerichte - Bestätigung</title>
</head>
<body>
<jsp:useBean id="lilib" class="web.javaBeans.LiliBean" scope="session" />
<h4>Bitte bestätigen Sie</h4>
<p>Das Lieblingsgericht von <jsp:getProperty name="lilib" property="name" />
ist: <jsp:getProperty name="lilib" property="lili" />

<form action="./A6Appl.jsp" method="get" >
	<input type="submit" name="ok" value="ok" />
	<input type="submit" name="nichtok" value="nicht ok" />
</form>
</body>
</html>