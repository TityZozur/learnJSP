<%@page import="web.javaBeans.LoginBean"%>
<%@page import="web.javaBeans.LayoutBean"%>
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
<jsp:useBean id="layout" class="web.javaBeans.LayoutBean" scope="session" />
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session" />
<jsp:useBean id="lb" class="web.javaBeans.LoginBean" scope="session" />

<% 
if (!lb.isLoggedIn()){
	msg.setGeneralWelcome();
	response.sendRedirect("./LoginAppl.jsp?comeFrom=PortalView");
}
%>

<jsp:getProperty name="layout" property="headlineHtml" />
<h2><jsp:getProperty name="msg" property="infoMsg" /></h2>
<h4><jsp:getProperty name="msg" property="actionMsg" /></h4>

<p>Urlaubsziele: <a href="./PortalAppl.jsp?applic=A4Appl">hier</a></p>
<p>Alle User anzeigen: <a href="./PortalAppl.jsp?applic=ShowUserView">hier</a></p>

<form action="PortalAppl.jsp" method="get" >
	<input type="submit" name="logout" value="logout" />
</form>
</body>
</html>