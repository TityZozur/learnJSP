<!DOCTYPE html>
<%@page import="web.javaBeans.MsgBean"%>
<%@page import="web.javaBeans.UserBean" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>O4S Reg-HTML</title>
</head>
<body>
<!-- Meine Kommentare hier -->
<jsp:useBean id="user" class="web.javaBeans.UserBean" scope="session"/>
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session"/>

<table>
	<tr><td><h4>BW4S Portal</h4></td><td><a href="https://www.hwg-lu.de/"><img alt="Logo" src="../img/FH-Logo.jpg"/></a></td></tr>
</table>

<h2><jsp:getProperty name="msg" property="infoMsg"/></h2>
<h4><jsp:getProperty name="msg" property="actionMsg"/></h4>

<form action="./RegAppl.jsp" method="get">
	<table>
		<tr><td>Nickname:</td><td><input type="text" name="userid" 
			value="<jsp:getProperty name="user" property="userid"/>"/></td></tr>
		
		<tr><td>Password:</td><td><input type="password" name="password" 
			value=""/></td></tr>
		
		<tr><td>Username:</td><td><input type="text" name="username" 
			value="<jsp:getProperty name="user" property="username"/>"/></td></tr>
		
		<tr><td>E-mail:</td><td><input type="text" name="email" 
			value="<jsp:getProperty name="user" property="email"/>"/></td></tr>
		
		<tr><td><input type="submit" name="login" 
			value="Zum Login"/></td><td><input type="submit" name="register" value="Registrieren"/></td></tr>
	</table>
</form>

</body>
</html>