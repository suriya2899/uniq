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
String s= request.getParameter("Employee_Id");
String s1=request.getParameter("password");

PrintWriter pw=response.getWriter();
if(s.isEmpty()||s1.isEmpty())
{
	pw.print("<h3>Please enter all details in given below</h3>");
	RequestDispatcher rss=request.getRequestDispatcher("admin_log.jsp");
	rss.include(request, response);
}
else{
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement(" select * from admin_det where empid=? and password=?");
					ps.setString(1, s);
					ps.setString(2, s1);
					
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					response.sendRedirect("admin_prod_fpage.jsp");
				}
				else
				{
					pw.print("<h3>your employee id and password is incorrect</h3>");
					RequestDispatcher rss=request.getRequestDispatcher("admin_log.jsp");
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