<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="navigation_bar.jsp" />  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="icon" href="tabicon.jpg" type="image/gif" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" >
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-theme.css" >
<title>Editor</title>
<link rel="stylesheet" href="ss.css" >
<style type="text/css" media="screen">
 body {
        overflow: hidden;
    }
    #editor {
                margin: 0;
                position: absolute;       
                top: 50px;
                bottom: 0px;
                left: 0px;      
                right: 0px;
                height: 350px;
                width: 650px;              
    } 
 </style>

<script  type="text/javascript" src="b.js"></script>
</head>
<body>
<form name="form">
 <div id="editor">

class test { 
   public static void main(String[] args) { 
    
      System.out.println("Hello, World");
   }
}

</div> 


<script src="ace-builds-master/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
<script> 
var editor = ace.edit("editor");
editor.setTheme("ace/theme/dracula");  
editor.session.setMode("ace/mode/java");

</script>



<textarea class="textarea3" cols="100" rows="15" name="code1" id="code1" readonly style="border:solid 4px black;overflow:auto;resize:none; background-color: white;color: black;">
   OUTPUT
</textarea>

<textarea class="textarea2" cols="100" rows="10" name="code2" id="code2" readonly style="border:solid 4px black;overflow:auto;resize:none; background-color: white;color: black;">
</textarea>

<div class="button_position" >
<button class="button" type="button" onclick="post()">RUN FINAL</button>&nbsp;&nbsp;
<INPUT class="button" type="button" value="RUN"  onclick="myfunction()" >&nbsp;&nbsp;
<button class="button" type="button"  onclick="blank()">&nbsp;&nbsp;RESET</button>
</div>


</form>
 <script language="javascript" type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</body>
</html>