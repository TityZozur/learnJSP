<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
<%
	String ziel 	 = request.getParameter("ziel");
	String bewertung = request.getParameter("bewertung");
	String anzeigen  = request.getParameter("anzeigen");
	String loeschen  = request.getParameter("loeschen");
	String eingeben  = request.getParameter("eingeben");
	if (anzeigen == null) anzeigen = "";
	if (loeschen == null) loeschen = "";
	if (eingeben == null) eingeben = "";
	
	if (anzeigen.equals("alle anzeigen")){
		ulb.schreibe(ziel, bewertung);
//		a4b.setUrlaubsziel(urlaubsziel);
//		a4b.setBewertung(bewertung);
//		a4b.schreibeUzBew();
		response.sendRedirect("./A4b.jsp");
	}else if(loeschen.equals("loeschen")){
		ulb.loescheUzBew();
		response.sendRedirect("./A4b.jsp");
	}else if(eingeben.equals("eingeben")){
		response.sendRedirect("./A4a.jsp");
	}else{
		response.sendRedirect("./A4a.jsp");
	}
%>

</body>
</html>