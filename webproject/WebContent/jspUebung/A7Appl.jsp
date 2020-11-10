<%@page import="web.javaBeans.KalorienBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="kalorien" class="web.javaBeans.KalorienBean" scope="session" />
<%! public String denullify(String s){ return (s == null)?"":s;} %>
<%
String weiter    = this.denullify(request.getParameter("weiter"));
String berechnen = this.denullify(request.getParameter("berechnen"));
String zurueck   = this.denullify(request.getParameter("zurueck"));
String[] nahrungsmittel = request.getParameterValues("nahrungsmittel"); // ausgewählten!!
if (nahrungsmittel == null) nahrungsmittel = new String[0];

if (weiter.equals("weiter")){
	kalorien.merkDirDieAuswahl(nahrungsmittel);
	response.sendRedirect("./A7bView.jsp");
}else if (berechnen.equals("berechnen")){
	String[] alleNahrungsmittel = {"Aachener Printen", "Aal geräuchert", "After Eight",
			"Alkoholfreies Bier", "Altbier", "Ananas frisch",
			"Apfelkompott gezuckert", "Artischocken", "Aubergine",
			"Austern", "Austernpilze", "Avocado"};
/* 	double[] kalorien = {400, 340, 425, 24, 44, 56,
			80, 50, 22.5, 70, 25, 372}; */	
	for (String nami : alleNahrungsmittel){
		String namiGramm = request.getParameter(nami);
		if (namiGramm != null){
			kalorien.setNamiGramm(nami, namiGramm);
		}
	}
	response.sendRedirect("./A7bView.jsp");
}else if (zurueck.equals("zurück")){
	
	response.sendRedirect("./A7aView.jsp");
}else{
	response.sendRedirect("./A7aView.jsp");
}
%>
</body>
</html>