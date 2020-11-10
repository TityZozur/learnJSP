<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Website</title>
</head>
<body>
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session" />
<jsp:useBean id="hb" class="web.javaBeans.HeaderBean" scope="session" />
<jsp:useBean id="lb" class="web.javaBeans.LoginBean" scope="session" />

<jsp:getProperty name="hb" property="headerHtml" />

<h2><jsp:getProperty name="msg" property="infoMsg" /></h2>
<h4><jsp:getProperty name="msg" property="actionMsg" /></h4>
<form action="./LoginAppl.jsp" method="get">
<table>
	<tr>	
		<td>Nickname:</td>
		<td>
			<input type="text"
					 name="userid"
					 value="<jsp:getProperty name="lb" property="userid" />"
			/>
		</td>
	</tr>
	<tr>
		<td>Passwort:</td>
		<td>
			<input type="password" name="password" value="" />
		</td>
	</tr>

	<tr>
		<td>
		</td>
		<td>
			<input type="submit" name="login" value="Login" />
		</td>
	</tr>
</table>
<p>Noch kein Mitglied? Bitte <a href="./LoginAppl.jsp?zurreg=zurreg">registrieren</a> Sie sich. 
</form></body>
</html>