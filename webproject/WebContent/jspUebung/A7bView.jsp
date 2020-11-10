<%@page import="web.javaBeans.KalorienBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kalorienrechner</title>
</head>
<body>
<jsp:useBean id="kalorien" class="web.javaBeans.KalorienBean" scope="session" />
<h2>Gesünder leben mit der M-Nr 654321</h2>
<p>Nach den aktuellen Angaben sind es 
<jsp:getProperty name="kalorien" property="kalorienanzahlAsHtml" />
Kalorien
<br />
Ändern Sie ggfs. die Mengen</p>


<form action="./A7Appl.jsp" method="get" >
<table>
<jsp:getProperty name="kalorien" property="auswahlAsHtml" />
</table>
<br />
<input type="submit" name="berechnen" value="berechnen" />
<br />
<input type="submit" name="zurueck" value="zurück" />

</form>


</body>
</html>