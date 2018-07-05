<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

response.setContentType("text/html");

out.println("hello");
String fullname = request.getParameter("fullname");
//session.setAttribute( "fullname", fullname );
String password = request.getParameter("password");
//session.setAttribute( "password", password );
String section = request.getParameter("section");
//session.setAttribute( "section", section );
String rollno = request.getParameter("rollno");
//session.setAttribute("rollno",rollno);
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","mca6");
    
    Statement s = c.createStatement();
    
    
    

    String q=  "insert into login_student "+"values('"+fullname+"','"+section+"','"+rollno+"','"+password+"')";
    int i=s.executeUpdate(q);
    if(i>0)
    response.sendRedirect("index.html");
    
}
catch(Exception e){}

%>
</body>
</html>