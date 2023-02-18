<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style=background-color:lightsteelblue>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%

PrintWriter pw=response.getWriter();
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement("select*from product_details");
					
					ResultSet rs=ps.executeQuery();
					out.print("<html>");
					out.print("<style>");
					out.print("table,th,td{ border:outset 3px;border-collapse:collapse;border-color:pink;background-color:white}");
					out.print("</style>");
					out.print("<h1>Product Details</h1>");
					out.print("<table>");
					out.print("<tr><th>Product Id</th><th>Image</th><th>Product Name</th><th>Quantity</th><th>Price</th></tr>");
					while(rs.next())
					{

						out.print("<tr><td>"+rs.getString(2)+"</td><td><img src="+rs.getString(5)+" width=100></td><td>"+rs.getString(1)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getString(3)+"</td></tr>");
					}
					
					out.print("</table><br>");
					
					out.print("	<a href=admin_prod_fpage.jsp><input type=button value=Back></a>");
					out.print("</html>");
				
				
				con.close();
	
} 

catch (Exception e) {

	e.printStackTrace();
}


	

%>
</body>
</html>