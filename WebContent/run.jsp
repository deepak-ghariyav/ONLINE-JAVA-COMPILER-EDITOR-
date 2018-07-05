<%@ page import="comp.Editor" %> 
<%
/* String codeArea=request.getParameter("code"); */
String codeArea=request.getParameter("code");
String r =comp.Editor.compile(codeArea); 
out.println(r);
%>

