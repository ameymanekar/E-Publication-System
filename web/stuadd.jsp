<%-- 
    Document   : stuadd
    Created on : Feb 10, 2019, 8:42:23 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.stuinsert()%>
Insert Result: <%=stud.passinsert()%>

<%
response.sendRedirect("Student.jsp");

%>






