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
String s1= request.getParameter("pname");
String s2=request.getParameter("pid");
String s3= request.getParameter("pqty");
String s4= request.getParameter("pprice");
String s5=request.getParameter("img");
PrintWriter pw=response.getWriter();
if(s1.isEmpty()||s2.isEmpty()|s3.isEmpty()||s4.isEmpty()||s5.isEmpty())
{
	pw.print("<h1>Please enter all details in given below</h1>");
	RequestDispatcher rss=request.getRequestDispatcher("admin_add.jsp");
	rss.include(request, response);
}
else{
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement("insert into product_details(product_name,product_id,product_qty,product_price,image) values(?,?,?,?,?)");
					ps.setString(1, s1);
					ps.setString(2, s2);
					ps.setString(3, s3);
					ps.setString(4, s4);
					ps.setString(5, s5);
					int rs=ps.executeUpdate();
				if(rs>0)
				{
					pw.print("Product Added to the list successfully");
					RequestDispatcher rss=request.getRequestDispatcher("admin_view.jsp");
					rss.include(request, response);				}
				else
				{
					pw.print(" unsuccessfully");
					RequestDispatcher rss=request.getRequestDispatcher("admin_add.jsp");
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