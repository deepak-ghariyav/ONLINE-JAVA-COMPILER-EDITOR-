<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="navigation_bar.jsp" />   
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home Page</title>
<style>
table, th, td {  
    border: 3px solid black;  
    border-collapse: collapse; 
    text-align:center; 
} 

table#alter tr:nth-child(even) {  
    background-color: #eee;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #fff;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
} 
</style>
</head>
<body>

<% 
 String rr= (String)session.getAttribute("rollno");
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    out.print("heyy");
    Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mca6");
    Statement s = c.createStatement();
    String s1 = "select  *from login_student where rollnumber= '"+rr+"'"; 
    ResultSet rs = s.executeQuery(s1); 
    %>
    <table  style="margin-top:100px; margin-left:20px; ">
<caption > <h3> STUDENT'S PROFILE </h3>  </caption>
<% 
while(rs.next())
{
%>	

<tr><th>STUDENT'S NAME:</th><td> <H3> <%= rs.getString(1) %></H3></td></tr>
<tr><th>STUDENT'S ROLL NUMBER:</th><td><H3> <%= rs.getString(3) %></H3></td> </tr>
<tr><th>STUDENT'S SECTION:</th> <td><H3> <%= rs.getString(2) %></H3></td> </tr>

<%
}
%>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</table>
</body>

</html>