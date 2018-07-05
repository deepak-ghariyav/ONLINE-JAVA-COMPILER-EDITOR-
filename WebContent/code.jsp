<%@ page language="java" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
function myfunction() {
    document.getElementById("form").submit();
   
}
</script>
 <title>code area</title>
 <meta name="viewport" content="width=device-width, initial-scale=1"> 
 <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" >
 <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-theme.css" >
 
  <link rel="stylesheet" href="ss.css" >
  
	
<script language="javascript" type="text/javascript" src="editarea_0_8_2/edit_area/edit_area_full.js"></script>

<script language="javascript" type="text/javascript">

editAreaLoader.init({
	
	id : "textarea_1"		// textarea id
	,syntax: "java"			// syntax to be uses for highgliting
	,start_highlight: true		// to display with highlight mode on start-up
});
</script>
  <script language="javascript" type="text/javascript" src="a.js"></script>
</head>
<body>
<form >
<textarea id="textarea_1"  name="textarea_1" cols="100" rows="15"></textarea>
<textarea id="code1" name="code1" cols="100" rows="10"></textarea>
<div class="button_position" >

<button class="button" type="button" onclick="post()">RUN FINAL</button>&nbsp;&nbsp;



<INPUT class="button" type="button" value="RUN"  onclick="myfunction()" >&nbsp;&nbsp;
<button class="button" type="button"  onclick="blank()">&nbsp;&nbsp;RESET</button>

</div>


 <script language="javascript" type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</form>
</body>

</html>