<%@page import="web.javaBeans.LiliBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lieblingsgerichte - Auswahl</title>
<link rel="stylesheet" 
		type="text/css"
		href="../css/BW4S.css" /> 
</head>
<body>
<jsp:useBean id="lilib" class="web.javaBeans.LiliBean" scope="session" />
<h2>Mein Name und mein Lieblingsgericht</h2>
<form action="./A6Appl.jsp" method="get" >
Mein Name:
	<input type="text" name="name" value="" /><br /><br />
Mein Lieblingsgericht:<br />
	<input type="radio" name="gericht" value="Spargel" />Spargel<br />
	<input type="radio" name="gericht" value="M&uuml;sli" />M&uuml;sli<br />
	<input type="checkbox" name="gericht" value="Kakerlakencarree" />Kakerlakencarree<br />
	<input type="checkbox" name="gericht" value="Kopfsalat" />Kopfsalat<br /><br />
<input type="submit" name="merken" value="merk's Dir!" />
<input type="submit" name="loeschen" value="loesche alles!" /><br />
<h4>Bisherige Lieblingsgerichte</h4>
<table>
</table>
 
<textarea cols="40" rows="10">
<jsp:getProperty name="lilib" property="alleLiliHtml" />

</textarea>

</form>

</body>
</html>