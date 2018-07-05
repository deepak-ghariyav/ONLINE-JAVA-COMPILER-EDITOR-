<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body {margin:0;}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: grey;
    position: fixed;
    top: 0;
    width: 100%;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

 li a:hover:not(.active) {
    background-color: black;
} 

/* .active {
    background-color: #4CAF50;
} */
</style>
<script>



</script>

</head>
<body>

<ul>
<li style="text-align: center; display: block; color: white;  padding: 14px 16px;">CODING-GROUND</li>
<li><a class="active" href="student_home.jsp">Home</a></li>
<li id="logout" onclick="logout();" style="float:right;"><a href="logout.jsp">LOGOUT</a></li>
<li><a href="practice.jsp">Practice</a></li>  
<li  style="text-align: center; display: block; color: white;  padding: 14px 16px;">You are logged in as: <%= session.getAttribute("rollno") %></li>
</ul>
</body>
</html>