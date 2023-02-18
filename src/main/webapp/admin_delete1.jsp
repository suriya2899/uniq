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

String s2=request.getParameter("pid");

PrintWriter pw=response.getWriter();
if(s2.isEmpty())
{
	pw.print("<h1>Please enter all details in given below</h1>");
	RequestDispatcher rss=request.getRequestDispatcher("admin_delete.jsp");
	rss.include(request, response);
}
else{
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement("delete from product_details where product_id=?");
					
					ps.setString(1, s2);
				
					int rs=ps.executeUpdate();
				if(rs>0)
				{
					pw.print("Product Deleted successfully");
					RequestDispatcher rss=request.getRequestDispatcher("admin_view.jsp");
					rss.include(request, response);				}
				else
				{
					pw.print(" Enter correct product Id");
					RequestDispatcher rss=request.getRequestDispatcher("admin_delete.jsp");
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