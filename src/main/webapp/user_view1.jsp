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
String pid=(String)session.getAttribute("pid");
int qty=Integer.parseInt((String)session.getAttribute("pqty"));

PrintWriter pw=response.getWriter();
response.setContentType("text/html");
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
	
					PreparedStatement ps=con.prepareStatement("update product_details set product_qty=(product_qty-?) where product_id=? ");
					ps.setInt(1,qty);
					ps.setString(2,pid);
					
					int rs=ps.executeUpdate(); 
			
					if(rs>0)
					{
					
						session.setAttribute("k1", qty);
						session.setAttribute("k3", pid);
						
					
					response.sendRedirect("user_buy.jsp");
						//RequestDispatcher rss=request.getRequestDispatcher("user_buy.jsp");
						
					}
					
				
				
				con.close();
	
} 

catch (Exception e) {

	e.printStackTrace();
}
%>

</body>
</html>