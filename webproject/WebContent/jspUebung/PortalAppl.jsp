<%@page import="web.javaBeans.LoginBean"%>
<%@page import="web.javaBeans.MsgBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session" />
<jsp:useBean id="lb" class="web.javaBeans.LoginBean" scope="session" />
<%
String applic = request.getParameter("applic");
String logout = request.getParameter("logout");
if (logout == null) logout = "";
String comeFrom = request.getParameter("comeFrom");
if (comeFrom == null) comeFrom = "";

if (logout.equals("logout")){
	msg.setLogoutSuccessful();
	response.sendRedirect("./LoginAppl.jsp?comeFrom=PortalAppl");
}else if (applic != null){
//	msg - nix zu setzen	
	response.sendRedirect("./" + applic + ".jsp");
}else if(!comeFrom.equals("")){
	//msg - müsste schon gesetzt sein
	response.sendRedirect("./PortalView.jsp");
}else{
	//Benutzer kommt von sonstwo -> Anmeldung
	msg.setGeneralWelcome();
	response.sendRedirect("./LoginAppl.jsp?comeFrom=PortalAppl");
}
%>
</body>
</html>