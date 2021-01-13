<%-- 
    Document   : viewpaper1
    Created on : Mar 31, 2019, 10:03:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("name");

System.out.println(sid);
%>      

       
        
        
    <center>     
        
<iframe src="pdf\<%=sid %>" style="width:1300px; height:650px;" frameborder="0"></iframe>
 
<center>
   </body>
   
   
  
</html>
