<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style=background-color:lightsteelblue>

<form>
<a href="admin_view.jsp"><input type="button" value="View product"></a>
<a href="admin_add.jsp"><input type="button" value="Add product"></a>
<a href="admin_delete.jsp"><input type="button" value="Delete product"></a>
<a href="admin_update.jsp"><input type="button" value="Update product"></a>
<a href="admin_sign1.jsp"><input type="button" value="View product"></a>

</form>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%
%>
</body>
</html>
 <html lang="en">
  
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Display Form</title>
      <style>
*{
    box-sizing:border-box;
    -moz-box-sizing:border-box;
  }
  body {
      background: url(//subtlepatterns.com/patterns/scribble_light.png);
    font-family: Calluna, Arial, sans-serif;
    min-height: 1000px;
  }
  #wrap{
      width: 90%;
      max-width: 1100px;
      margin: 50px auto;
  }
  .columns_2 figure{
     width:49%;
     margin-right:1%;
  }
  .columns_2 figure:nth-child(2){
      margin-right: 0;
  }
  .columns_3 figure{
     width:32%;
     margin-right:1%;
  }
  .columns_3 figure:nth-child(3){
      margin-right: 0;
  }
  .columns_4 figure{
     width:24%;
     margin-right:1%;
  }
  .columns_4 figure:nth-child(4){
      margin-right: 0;
  }
 
  #columns figure:hover{
      -webkit-transform: scale(1.1);
      -moz-transform:scale(1.1);
      transform: scale(1.1);
  
  }
  #columns:hover figure:not(:hover) {
      opacity: 0.4;
  }
  div#columns figure {
      display: inline-block;
      background: lightsteelblue;
      border: 2px solid #FAFAFA;
      box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
      margin: 0 0px 15px;
      -webkit-column-break-inside: avoid;
      -moz-column-break-inside: avoid;
    
      padding: 15px;
      padding-top: 25px;
      background: -webkit-linear-gradient(45deg, #FFF, #F9F9F9);
      opacity: 1;
      -webkit-transition: all .3s ease;
      -moz-transition: all .3s ease;
      -o-transition: all .3s ease;
      transition: all .3s ease;
  }
  
  div#columns figure img {
      width: 100%;
      border-bottom: 1px solid #ccc;
      padding-top: 25px;
      margin-bottom: 15px;
  }
  
 
  
  a.button{
    padding:10px;
    background: #fbba50;
    margin:10px;
    display:block;
    text-align:center;
    color:black;
    transition:all 1s linear;
    text-decoration:none;
    text-shadow:1px 1px 3px rgba(0,0,0,0.3);
    border-radius:3px;
    border-bottom:3px solid  #fbba50;
    box-shadow:1px 1px 3px rgba(0,0,0,0.3);
  }
  a.button:hover{
    background:#d88a0c;
  
    color:#f1f2f3;
  }

      </style>

  </head>


<!--Changing the number in the column_# class changes the number of columns-->
<body>
	<div id="wrap">
	<div id="columns" class="columns_4">
        <figure>
             <img src="delete2.png">
            <a class="button" href="admin_add.jsp">Add</a>
        </figure>
        <figure>
            <img src="https://th.bing.com/th/id/OIP._xurT8m_gXhGf35e9hPWoQHaHa?pid=ImgDet&w=480&h=480&rs=1">
            <a class="button" href="admin_delete.jsp">Delete</a>
        </figure>
        <figure>
            <img src="‪C:\Users\user\Downloads\view.jpg">
            <a class="button" href="admin_view.jsp">View</a>
        </figure>
         <figure>
            <img src="‪https://th.bing.com/th/id/OIP.ZYQsqX8XpC-vyM5swaRMygAAAA?pid=ImgDet&rs=1">
          <a class="button" href="admin_update.jsp" >Update</a>
         </figure>     
  
	</div>

</body>
  </html>