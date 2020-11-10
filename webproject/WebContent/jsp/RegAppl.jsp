<%@page import="web.javaBeans.MsgBean"%>
<%@page import="web.javaBeans.UserBean"%>
<%@page import="java.util.Date"%>
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
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session"/>
<%!
public String denullify(String s){
	if(s == null) return "";
	else return s;
}
%>
<%
//Thema Session:
session.setAttribute("user", user);
session.setAttribute("msg", msg);
//UserBean user2 = (UserBean) session.getAttribute("user");
//session.invalidate(); nach der Schließlung vom Browser
//session.setMaxInactiveInterval(int); automische Abmeldung vom User; Kann aber auch im Server festgelegt werden.


//Felder einlesen
String userid   = request.getParameter("userid");
String password = request.getParameter("password");
String username = request.getParameter("username");
String email    = request.getParameter("email");

//Button einlesen
String login = denullify(request.getParameter("login"));
String register = denullify(request.getParameter("register"));

System.out.println("Userid ist: " + userid);
System.out.println("Password ist: " + password);
System.out.println("Username ist: " + username);
System.out.println("Email ist: " + email);

if(login.equals("Zum Login")){
	response.sendRedirect("./Login.jsp");
	
}else if(register.equals("Registrieren")){
	
	user.setUserid(userid);
	user.setPassword(password);
	user.setUsername(username);
	user.setEmail(email);
	user.setActive("Y");
	
	if(user.insertUserIfNotExists()){
		System.out.println("User successfully inserted...");
		msg.setRegSuccess(userid);
	}else msg.setSystemfehler();
			
	response.sendRedirect("./Reg.jsp");

}else response.sendRedirect("./Login.jsp");
%>


</body>
</html>