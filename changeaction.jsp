<%-- 
    Document   : changeaction
    Created on : Apr 5, 2020, 12:43:37 PM
    Author     : Admin
--%>
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
    <body></body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.Db_connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>


<%
    String opass = request.getParameter("passold");
    String id = request.getParameter("id");
   
    String npass = request.getParameter("passnew");
    
  Connection con = Db_connection.getConnection();

  
  
  try
  {
      if(con!=null)
      {
          PreparedStatement ps=con.prepareStatement("update reg set password="+npass+" where id=" + id +" AND password=" + opass+"");
          int i=ps.executeUpdate();
          
          if(i>0)
          {
              out.println("<h2 align='center'>Password changed</h2>");
          }
          else
          {
              out.println("<h2 align='center'>Wrong ID or password</h2>");
          }
      }
        else
      {
          out.print("<h2 align='center'>not connected to database</h2>");
      }
       
 }
  catch(Exception e)
        {
            System.out.println(e);
        }
 %>
