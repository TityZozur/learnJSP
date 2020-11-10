<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="lb" class="web.javaBeans.LoginBean" scope="session" />
<jsp:useBean id="msg" class="web.javaBeans.MsgBean" scope="session" />
<%!
	public String denullify(String s){
		// return (s==null)?"":s;
		if (s == null) return "";
		else return s;
	}
//public String denullify(String s){return (s==null)?"":s;} 
%>
<%
	String userid   = request.getParameter("userid");
	String password = request.getParameter("password");
	String login  = this.denullify(request.getParameter("login"));
	String zurreg = this.denullify(request.getParameter("zurreg"));
	String comeFrom = this.denullify(request.getParameter("comeFrom"));

	if (login.equals("Login")){
		lb.setUserid(userid);		
		lb.setPassword(password);
		try{
			if (lb.checkUseridPasswort()){
				msg.setLoginSuccess();
				lb.setLoggedIn(true);
				response.sendRedirect("./PortalAppl.jsp?comeFrom=login");
			}else{
				msg.setLoginFailed();
				response.sendRedirect("./LoginView.jsp");
			}
		}catch(SQLException se){
			se.printStackTrace();
			msg.setSystemfehler();
			response.sendRedirect("./LoginView.jsp");
		}
	}else if (zurreg.equals("zurreg")){
		msg.setRegWelcome();
		response.sendRedirect("./RegAppl.jsp?comeFrom=login");		
	}else if(!comeFrom.equals("")){
		// keine Message-Änderung
		response.sendRedirect("./LoginView.jsp");
	}else{
		msg.setGeneralWelcome();
		response.sendRedirect("./LoginView.jsp");
	}
%>
</body>
</html>