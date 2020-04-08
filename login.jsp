<%-- 
    Document   : login
    Created on : Apr 4, 2020, 7:48:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
            background-image:url('bg.jpg');
            background-size:100% 100%;	
            background-attachment:fixed;
            }
            a:link, a:visited {
            color:white;
            text-decoration: underline;
            font-size: 20px;
            background-color: black;
            }
        </style>
    </head>
    <body>
        <h2 align="center">To Login in your account fill the details</h2>
        <br/><br/>
        <form  action="loginaction.jsp" method="post">
            <table border="0" align="center" cellpadding="10" cellspacing="10"
bgcolor="black" style="color:white;font-size:20px;
border:2px solid white;box-shadow:0px 0px 10px black;
border-radius:20px;opacity:0.7">  
                <tr>
                    <td><input type="text" name="id" placeholder="Assigned ID"/></td>
                </tr>
                <tr>
                    <td><input type="password" name="pass" placeholder="Password"/><br</td>
                </tr>
                <tr>
                    <td><input type="submit" value="login"></td>
                </tr>
                            
            </table>
            <table align="center">
                <tr>
                    <td><a href="passchange.jsp">change  password</a></td>
                </tr>
            </table>
                            
        </form>
    </body>
</html>
