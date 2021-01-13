<style>
    body {
    background-image: url("aa.jpg");
    background-repeat: no-repeat;
}
     .enjoy-css {
  display: inline-block;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  padding: 18px 26px 17px 27px;
  border: 1px solid rgba(22,22,22,0.66);
  -webkit-border-radius: 3px;
  border-radius: 3px;
  font: normal 31px/normal "Times New Roman", Times, serif;
  color: rgba(255, 255, 255, 0.9);
  -o-text-overflow: clip;
  text-overflow: clip;
  background: url("http://enjoycss.com/bg-img/default/1_2.png");
  background-position: 50% 50%;
  -webkit-background-origin: padding-box;
  background-origin: padding-box;
  -webkit-background-clip: border-box;
  background-clip: border-box;
  -webkit-background-size: auto auto;
  background-size: auto auto;
  -webkit-box-shadow: 2px 2px 22px 1px rgba(201,201,201,1) ;
  box-shadow: 2px 2px 22px 1px rgba(201,201,201,1) ;
  text-shadow: 6px 2px 1px rgba(20,20,20,0.66) ;
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}
.enjoy-css2 {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 76px/1 "Courier New", Courier, monospace;
  color: #ffffff;
  text-align: center;
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 0 9px rgba(0,2,5,0.9) ;
  -webkit-transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
  transform: rotateX(-0.5729577951308232deg) rotateY(0.5729577951308231deg)   ;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}
  
    body
{
    counter-reset: Serial;           /* Set the Serial counter to 0 */
}

table
{
    
}

tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: " " counter(Serial); /* Display the counter */
}


        </style>
        <center>
       <table  style="width:70%" border="" >
    
    <table style="width:100%"  border="1"  >
             <tr>
                
                    <th>SR. NO.</th>
                    <th>File Name</th>
                    <th>VIEW PAPER</th>
                        
                </tr>

        <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "hvpm";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from filename4";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
              
    <tr>  
                    <td></td>  
                    <td><%=resultSet.getString("filename") %></td>
                   
                     <td><a href='viewpaperpdf.jsp?name=<%=resultSet.getString("filename") %>' ><img src="123.png" height="30px"></a></td>
                    
                    
                  
                   
                       </tr>
        
        
        <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
        
        
        
        
       
   <body>         

  
</center>
   </body>
   
      
  </table>