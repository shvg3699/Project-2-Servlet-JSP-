<%-- 
    Document   : passchange
    Created on : Apr 5, 2020, 12:38:56 PM
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
        <h2 align="center">To change password fill the details</h2>
        <br/><br/>
        <form  action="changeaction.jsp" method="post">
            <table border="0" align="center" cellpadding="10" cellspacing="10"
bgcolor="black" style="color:white;font-size:20px;
border:2px solid white;box-shadow:0px 0px 10px black;
border-radius:20px;opacity:0.7">  
                <tr>
                    <td><input type="text" name="id" placeholder="Assigned ID"/></td>
                </tr>
                <tr>
                    <td><input type="password" name="passold" placeholder="Old Password"/><br</td>
                </tr>
                <tr>
                    <td><input type="password" name="passnew" placeholder="New Password"/><br</td>
                </tr>
                <tr>
                    <td><input type="submit" value="change"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
