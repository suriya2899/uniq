<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
String s1= request.getParameter("Admin_Id");
String s2=request.getParameter("Adminname");
String s3= request.getParameter("Email");
String s4=request.getParameter("Mobile_No");
String s5= request.getParameter("pass");
String s6=request.getParameter("confirm-pass");
PrintWriter pw=response.getWriter();
if(s1.isEmpty()||s2.isEmpty()|s3.isEmpty()||s4.isEmpty()||s5.isEmpty()||s6.isEmpty())
{
	pw.print("<h1>Please enter all details in given below</h1>");
	RequestDispatcher rss=request.getRequestDispatcher("admin_sign1.jsp");
	rss.include(request, response);
}
else{
	if(s5.equals(s6))
	{
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement("insert into admin_det(empid,emp_name,email,phone_no,password) values(?,?,?,?,?)");
					ps.setString(1, s1);
					ps.setString(2, s2);
					ps.setString(3, s3);
					ps.setString(4, s4);
					ps.setString(5, s5);
				int rs=ps.executeUpdate();
				if(rs>0)
				{
					response.sendRedirect("admin_log.jsp");
				}
				else
				{
					response.sendRedirect("admin_sign1.jsp");
				} 
				con.close();
	
} 

catch (Exception e) {

	e.printStackTrace();
}
	}
	else
	{
		pw.print("<h3>Password is incorrect Please enter correct password</h3>");
		RequestDispatcher rss=request.getRequestDispatcher("admin_sign1.jsp");
		rss.include(request, response);
	}
}
%>



</body>
</html>