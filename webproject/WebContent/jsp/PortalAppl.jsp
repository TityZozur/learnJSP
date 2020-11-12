<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="web.javaBeans.UserBean" scope="session"/>
<jsp:useBean id="lb" class="web.javaBeans.LoginBean" scope="session"/>
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session"/>

<h2><jsp:getProperty name="msg" property="infoMsg"/></h2>
<h4><jsp:getProperty name="msg" property="actionMsg"/></h4>


<%
response.sendRedirect("./Portal.jsp");
%>


</body>
</html>