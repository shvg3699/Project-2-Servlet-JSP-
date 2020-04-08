<%-- 
    Document   : admin
    Created on : Apr 4, 2020, 7:59:10 PM
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
        </style>
    </head>
    <body>
        <h2 align="center">ADMIN LOGIN </h2>
        <br/><br/>
        <form action="adminlogin.jsp" method="post">
            <table border="0" align="center" cellpadding="10" cellspacing="10"
bgcolor="black" style="color:white;font-size:20px;
border:2px solid white;box-shadow:0px 0px 10px black;
border-radius:20px;opacity:0.7">  
                <tr>
                    <td><input type="text" name="name" placeholder="admin name"/></td>
                </tr>
                <tr>
                    <td><input type="password" name="pass" placeholder="Password"/><br</td>
                </tr>
                <tr>
                    <td><input type="submit" value="login"></td>
                </tr>
                            
            </table>
                            
                           
                            
                                       
                        </form>
    </body>
</html>
