<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style=background-color:lightsteelblue>
<h1>Product update </h1>
<form action="admin_update1.jsp">
<table>
<tr>
<th>Enter product Id to update</th><td><input type="text" name="pid"></td>
</tr>
<tr>
<th> product Quantity </th><td><input type="text" name="pqty"></td>
</tr>
<tr>
<th>product price</th><td><input type="text" name="pprice"></td>
</tr>
<tr><td colspan="1"><input type="submit" value="Save"></td><td><a href="admin_prod_fpage.jsp"><input type="button" value="Back"></a></td></tr>
</table>
</form>
</body>
</html>