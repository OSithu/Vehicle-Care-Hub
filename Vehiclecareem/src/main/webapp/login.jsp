<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <title>User Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('file:///D:/new/temp/Login/images/shutterstock_512157514.jpg'); 
            background-size: cover; 
            /*background-repeat: no-repeat; 
            background-attachment: fixed;*/
        }
        
        div {
            text-align: center;
            margin-top: 50px;
        }
        
        h1 {
            color: #333;
        }
        
        table {
            background-color: #fff;
            border: 90px solid #ccc;
            border-radius: 5px;
            padding: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form {
          width: 300px; 
          margin: 0 auto; 
          padding: 40px;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); 
          background-color: #fff;
      }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div align ="center">
<h1>Staff Login Form</h1>
<form action ="login" method="post">
<table>

<tr><td>UserName: </td><td><input type="text" name="username"></td></tr>
<tr><td>Password: </td><td><input type="password" name="password"></td></tr>

<tr><td></td><td><input type="submit" value="Submit"></td></tr>
</table>


</form>

</div>
</body>
</html>