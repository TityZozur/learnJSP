<%@page import="web.javaBeans.LiliBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="lilib" class="web.javaBeans.LiliBean" scope="session" />
<%
String name     = request.getParameter("name"); 
String[] gericht  = request.getParameterValues("gericht"); 
String merken   = request.getParameter("merken"); 
String loeschen = request.getParameter("loeschen"); 
String ok       = request.getParameter("ok"); 
String nichtok  = request.getParameter("nichtok"); 
if (merken == null) merken = "";
if (loeschen == null) loeschen = "";
if (ok == null) ok = "";
if (nichtok == null) nichtok = "";
if (gericht == null) gericht = new String[0];

if (merken.equals("merk's Dir!")){
	lilib.merken(name, gericht);
	response.sendRedirect("./A6bView.jsp");
}else if(loeschen.equals("loesche alles!")){
	lilib.loeschen();
	response.sendRedirect("./A6aView.jsp");
}else if(ok.equals("ok")){
	lilib.ok();
	response.sendRedirect("./A6aView.jsp");
}else if(nichtok.equals("nicht ok")){
	
	response.sendRedirect("./A6aView.jsp");
}else{
	
	response.sendRedirect("./A6aView.jsp");
}


%>
</body>
</html>