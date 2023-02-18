<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
PrintWriter pw=response.getWriter();
String pid=request.getParameter("pid");
String pqty=request.getParameter("pqty");
session.setAttribute("pid", pid);
session.setAttribute("pqty",pqty);
pw.print("<a href=user_view1.jsp>Click to continue payment process</a><br>");
pw.print("<a href=user_view.jsp>Back</a>");

%>
</body>
</html>