<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="navigation_bar.jsp" />  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Practice here</title>
<link rel="stylesheet" href="ss.css" >
<style type="text/css" media="screen">
<link rel="icon" href="tabicon.jpg"  >


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
              
              height: 550px;
              width: 650px;
              font-size: 18px;
              
    }   

   
 
 </style>
   
   <script  type="text/javascript" src="b.js"></script>

</head>

<body>
<form name="form">

<pre id="editor"  >

 class test {
   public static void main(String[] args) {
    
      System.out.println("Hello, GTBIT");
       for(int j = 5;j>0;j--)
      {
      System.out.println(j);
      }
   }
}
 
</pre>


<script src="ace-builds-master/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
<script>
 
   var editor = ace.edit("editor");
    editor.setTheme("ace/theme/twilight");
    editor.session.setUseWrapMode(true);
 editor.session.setMode("ace/mode/java");
</script>


   
 <textarea class="textarea2" cols="100" rows="15" name="code1" id="code1" readonly style="border:solid 4px black;overflow:auto;resize:none; background-color: white;color: black;">
 </textarea>
<div class="button_position" >
<button class="button" type="button" onclick="post()">RUN FINAL</button>&nbsp;&nbsp;
<INPUT class="button" type="button" value="RUN"  onclick="myfunction()" >&nbsp;&nbsp;
<button class="button" type="button"  onclick="blank()">&nbsp;&nbsp;RESET</button>

</div>
</form>
</body>
</html>