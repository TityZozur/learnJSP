<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! private int count = 0;%>
<%!	private void increment(){
		count++;
	}
%>

<h4>Der aktuelle Zählerstand ist: <%=count%></h4>

<form action="./Zaehler.jsp" method="get">
	<input type="submit" name="hoeher" value="add 1"/>
</form>

<%
String add = request.getParameter("hoeher");
if(add == null) add = "";
if(add.equals("add 1")){
	this.increment();
	response.sendRedirect("./Zaehler.jsp");
}
%>

</body>
</html>