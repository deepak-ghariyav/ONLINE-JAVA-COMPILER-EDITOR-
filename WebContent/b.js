



function blank()
{
	alert(" deepak");
	
}





function post(){ 
	var request;
	
/*var comment=document.getElementById("cc").value;*/
var c = editor.getValue()	;
/*	var c = myCodeMirror.getValue()	;*/
/*var url="run.jsp?code="+comment;*/  
var url="run.jsp?code= "+c;
if(window.XMLHttpRequest){  
	

request=new XMLHttpRequest();  
}
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4 && request.status == 200){  

document.getElementById('code1').innerHTML= request.responseText;
}  
};//end of function  
request.open("GET",url,true);  
request.send();  
}
catch(e){alert("Unable to connect to server");
}  
}
 	       