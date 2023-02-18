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
String s= request.getParameter("Email");
String s1=request.getParameter("passWord");

PrintWriter pw=response.getWriter();
if(s.isEmpty()||s1.isEmpty())
{
	pw.print("<h3>Please enter all details in given below</h3>");
	RequestDispatcher rss=request.getRequestDispatcher("user_log.jsp");
	rss.include(request, response);
}
else{
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement(" select * from user_det where email=? and password=?");
					ps.setString(1, s);
					ps.setString(2, s1);
					
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					response.sendRedirect("user_view.jsp");
				}
				else
				{
					pw.print("<h3>User name and Password is incorrect</h3>");
					RequestDispatcher rss=request.getRequestDispatcher("user_log.jsp");
					rss.include(request, response);
				} 
				con.close();
	
} 

catch (Exception e) {

	e.printStackTrace();
}
	
}
%>
</body>
</html>