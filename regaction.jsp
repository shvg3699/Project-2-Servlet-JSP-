<%-- 
    Document   : regaction
    Created on : Apr 4, 2020, 11:02:21 PM
    Author     : Admin
--%>

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
    String email = request.getParameter("mail");
    String dob = request.getParameter("date");
    String gen = request.getParameter("gen");
    String id = request.getParameter("id");
    String phone = request.getParameter("mobile");
    
  Connection con = Db_connection.getConnection();

try{  
 
PreparedStatement ps=con.prepareStatement(  
"insert into reg values(?,?,?,?,?,?,?)");  
ps.setString(1,name);  
ps.setString(2,email);  
ps.setString(3,id); 
ps.setString(4,pass);
ps.setString(5,gen);
ps.setString(6,dob);
ps.setString(7,phone);

int i=ps.executeUpdate();  
if(i>0)  
out.print("You are successfully registered...");  
      
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
  

%>
