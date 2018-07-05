<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.io.*"%>

<% 
String rollno = request.getParameter("rollno");
session.setAttribute("rollno", rollno);
String password = request.getParameter("password");
session.setAttribute("password",password);
String fullname = request.getParameter("fullname");
session.setAttribute("fullname",fullname);
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mca6");
    Statement s = c.createStatement();
    String s1 = "select * from login_student where rollnumber= '"+rollno+"'and  password='"+password+"'";
    ResultSet rs = s.executeQuery(s1);
    if(rs.next())
    {
    	response.sendRedirect("student_home.jsp");  
    }
    else 
    {
    	
    %>	
    <script> alert("invalid username or password");  </script>
    <% 	
    }
}
catch(Exception e){}
%>
