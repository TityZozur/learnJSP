<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SelectMultiple</title>
</head>
<body>
<h4>Select Multiple Head.</h4>
<form action="./registration.jsp" method="post">
<table>
	<tr><td><textarea rows="10" cols="30" name="myText" placeholder="Enter your text!"></textarea></td></tr>
	<tr><td><input type="submit" name="myBut" value="druekMich"/></td></tr>
	<tr><td>
	<select name="mySel" id="mySel" multiple="multiple">
		<option value="sel1" >Sel1</option>
		<option value="sel2" >Sel2</option>
		<option value="sel3" >Sel3</option>
	</select>
	</td></tr>
</table>
</form>
<%
//response.setHeader("Refresh", "60")--> refesh website;
//response.setHeader("content-type", "application/msword") --> Download as word file;
%>	
</body>
</html>