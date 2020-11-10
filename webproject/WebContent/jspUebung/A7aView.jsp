<%@page import="web.javaBeans.KalorienBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gesunde Ernährung</title>
</head>
<body>
<jsp:useBean id="kalorien" class="web.javaBeans.KalorienBean" scope="session" />
<h2>Gesünder leben mit der M-Nr 654321</h2>
<h4>Heute: Der Kalorienrechner</h4>
<p>Was haben Sie gegessen?</p>
<form action="./A7Appl.jsp" method="get" >
<select name="nahrungsmittel" multiple="multiple" 
		size="<jsp:getProperty name='kalorien' property='alleNahrungsmittelLength' />" >
<jsp:getProperty name="kalorien" property="alleAsOptionsHtml" /> 
</select>
<br />
<input type="submit" name="weiter" value="weiter" />
<input type="reset" name="reset" value="Auswahl löschen" />

</form>
</body>
</html>