<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <style>
        html {
            background: #e3e3ff;
        }
        
        .body-content {
            padding-top: 10vh;
        }   
        
        .container {
            width: 350px;
            height: 452px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
            border: 1px solid White;
            border-radius: 15px;
            background: lightsteelblue;
        }
        
       /* .logo {
            margin-top: 0px;
            padding-top: 0;
        }
        
        .logo img {
            width: 100px;
            border-radius: 50px;
        }
        */
        h1 {
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
        
        .form-item label {
            display: block;
            padding: 2px;
            font-size: 20px;
            width: 100px;
        }
        
        .form-item input {
            width: 320px;
            height: 35px;
            border: 2px solid #e1dede69;
            border-radius: 20px;
            background: white;
            color: black;
            text-align: center;
        }
        
        .form-btns {
            display: flex;
            flex-direction: column;
            margin: auto;
            padding: 10px 0;
        }
        
        .form-btns button {
            margin: auto;
            font-size: 20px;
            padding: 5px 15px;
            border: 0;
            border-radius: 15px;
            color: black;
            background: #fbba50;
            width: 280px;
            cursor: pointer;
        }
        .form-btns button:hover {
            background: #d88a0c;
            color: antiquewhite;
        }
        
        .options {
            padding-top: 15px;
            margin: auto;
        }
        
        
       
        
       
    </style>
</head>

<body>
    <div class="body-content">

        <div class="container">

            <h1>Admin Login</h1>
            <div class="login-form">
                <br>
                 
                <form action="admin_log1.jsp">
                    <div class="form-item">
                        <!-- <label for="userName">Username:</label> -->
                        <input type="text" name="Employee_Id" id="emp_id" placeholder="Employee_Id">
                    </div>
                    <div class="form-item">
                        <!-- <label for="passWord">Password:</label> -->
                        <input type="password" name="password" id="passWord" placeholder="Password">
                    </div>
					<br>
                    <div>
                       
                        <a href="#">Forget Password?</a>
						<a href="user_log.jsp">user login</a>
                    </div>
                    
                    <div class="form-btns">

                        <button type="submit">Login</button>
                        <div class="options">
                            <a href="admin_sign1.jsp">Sign Up</a>
                        </div>


                    </div>
                </form>
                
            </div>
        </div>
    </div>



</body>

</html>