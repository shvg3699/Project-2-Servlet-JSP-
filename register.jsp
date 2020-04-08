<%-- 
    Document   : register
    Created on : Apr 4, 2020, 3:16:29 PM
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
        <h2 align="center">To register fill the details</h2>
        <br/><br/>
        <form action="regaction.jsp" method="get">
            <table border="0" align="center" cellpadding="10" cellspacing="10"
bgcolor="black" style="color:white;font-size:20px;
border:2px solid white;box-shadow:0px 0px 10px black;
border-radius:20px;opacity:0.7">
                <tr> 
                    <td><input type="text" name="name" placeholder="Your name"/></td>
                </tr>
                <tr> 
                    <td><input type="email" name="mail" placeholder="Your Email"/></td>
                </tr>
                <tr> 
                    <td><input type="text" name="id" placeholder="Your ID"/></td>
                </tr>
                <tr> 
                    <td><input type="password" name="pass" placeholder="New Password"/></td>
                </tr>
                <tr>
                    <td><select name="gen">
                                <option value="-1">Choose Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Others">Others</option>
                            </select><br></td>
                </tr>
                <tr>
                    <td><input type="date" name="date" placeholder="Date of Birth"/></td>
                </tr>
                <tr>
                    <td><input type="text" name="mobile" placeholder="Contact Number"/></td>
                </tr>
                
                
                <tr>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
                            
                            
                            
                            
                            
                            
                        
    </body>
</html>
