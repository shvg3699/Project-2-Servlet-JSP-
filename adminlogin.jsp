<%-- 
    Document   : adminlogin
    Created on : Apr 5, 2020, 1:42:01 AM
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
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    String dob = request.getParameter("date");
    String gen = request.getParameter("gen");
    String id = request.getParameter("id");
    String phone = request.getParameter("mobile");
    
    
  
  Connection con = Db_connection.getConnection();
  ResultSet rs = null;
  Statement st = null;
  
  try {
                    st = con.createStatement();
                    rs = st.executeQuery("select * from reg");
                    if(name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("12345"))
                    {    
                        out.print("<h1 align='center'>Display the record</h1>");
    out.print("<table border='1' align='center' cellpadding='10 cellspacing='10'><tr><th>Name</th>"
            + "<th>Email</th><th>Id</th><th>Password</th><th>Gender</th><th>DOB</th><th>Phone no</th></tr>");
                        while(rs.next())
                        {
                            out.print("<tr><td>");
                            out.print(rs.getString(1));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(2));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(3));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(4));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(5));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(6));
                            out.print("</td>");
                            out.print("<td>");
                            out.print(rs.getString(7));
                            out.print("</td>");
                            out.print("</tr>");

                        }
                    }
                    else
                    {
                        
                        out.print("<h2 align='center'>Wrong admin name or password</h2>");
                    }
                } catch(Exception e)
        {
            System.out.println(e);
        }
            out.print("</table>");
  
  %>
