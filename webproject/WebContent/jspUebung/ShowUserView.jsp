<%@page import="web.javaBeans.LayoutBean"%>
<%@page import="web.javaBeans.ShowUserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BW4S-Show All Users</title>
</head>
<body>
<jsp:useBean id="layout" class="web.javaBeans.LayoutBean" scope="session" />
<jsp:useBean id="showuser" class="web.javaBeans.ShowUserBean" scope="session" />

<jsp:getProperty name="layout" property="headlineHtml" />
<h4>Alle User aus der DB-Tabelle USER</h4>

<jsp:getProperty name="showuser" property="htmlString" />

</body>
</html>