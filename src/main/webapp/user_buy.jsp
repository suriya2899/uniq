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
	int qty=(int)session.getAttribute("k1");
//	String ss=(String)session.getAttribute("k2");
	
	String pid=(String)session.getAttribute("k3");
	
int price=0;
	
	response.setContentType("text/html");
PrintWriter pw=response.getWriter();



try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminn","root","Suriya@123");
					PreparedStatement ps=con.prepareStatement(" select * from product_details where product_id=?");
					ps.setString(1, pid);
				ResultSet rs=ps.executeQuery();
				pw.print("<html><table>");
				pw.print("<tr><th> </th><th>Product_id</th> <th>Product_Name</th> <th> Qty</th> <th> price</th><th> Total</th> </tr>");
				if(rs.next())
				{
				
			price=	Integer.parseInt(rs.getString(3));
			int total=qty*price;
					pw.println("<tr><td><img src="+rs.getString(5)+" width=100></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(1)+"</td><td>"+qty+"</td><td>"+rs.getString(3)+"</td><td>"+total +" </td></tr>");
					
					pw.println("</table><p>Purchased Successfully</p>");
				}
				else
				{
					pw.print("<h3>User name and Password is incorrect</h3>");
					RequestDispatcher rss=request.getRequestDispatcher("user_log.jsp");
					rss.include(request, response);
				}
			
				pw.print("<a href=user_view.jsp>back</a></html>");
				con.close();
	
} 

catch (Exception e) {

	e.printStackTrace();
}
	

%>`
</body>
</html>