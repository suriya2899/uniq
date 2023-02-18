<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
          html {
            background: #e3e3ff;
        }
        .body-content {
            padding-top: 20vh;
        }
        
        .container {
            width: 400px;
            height: 600px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
            border: 1px solid White;
            border-radius: 15px;
            background: lightsteelblue;
        }
        h2 {
            color:black;
            font-family: Arial, Helvetica, sans-serif;
        }
        
        form {
            display: flex;
            flex-direction: column;
        }
        
        .form-item {
            margin: 5px;
            padding-bottom: 10px;
            display: flex;
        }
        
        
        input {
            height: 40px;
			width:340px;
            border-radius: 10px;
            border: none;
            outline: none;
            margin: 5px;
            text-align: center;
            font-size: 18px;
            color: black;
            background-color: whitesmoke;
        }
        
        .btns {
            margin: 15px auto;
        }
        
        button {
            background-color:  #fbba50;
            color: black;
            border: none;
            padding: 8px 30px;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
            margin: 5px 25px;
        }
        
        button:hover {
            background: #d88a0c;
            color: antiquewhite;
        }
        
       
    </style>
</head>

<body>

    <div class="container">
        <h2>User Registration</h2>
        <form action="user-sign1.jsp">
           
            <input type="text" name="username" id="username" placeholder="Username"><br>
            <input type="text" name="Mobile_No" id="Mobile No" placeholder="Mobile No"><br>
            <input type="email" name="email" id="email" placeholder="Email"><br>
            <input type="password" name="pass" id="pass" placeholder="Password"><br>

            <input type="password" name="confirm-pass" id="confirm-pass" placeholder=" confirm password"><br>

            <div class="btns">
                <button type="submit">Register</button>
            </div>
            <div>
                <a href="user_log.jsp">Back</a>
            </div>

        </form>
    </div>

</body>

</html>