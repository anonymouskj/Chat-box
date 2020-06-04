<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Cool Sign Up Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body {
		color: #fff;
		background: #000;
		font-family: 'Roboto', sans-serif;
	}
	.form-control {		
		min-height: 41px;
		box-shadow: none;
		border-color: #000;
	}
	.form-control:focus {
		border-color: #49c1a2;
	}
	.form-control, .btn {        
        border-radius: 3px;
    }
	.signup-form {
		width: 600px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.signup-form form {
		color: #000;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form h2 {
		color: #333;
		font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }    
	.signup-form .form-group {
		margin-bottom: 20px;
	}
	.signup-form label {
		font-weight: normal;
		font-size: 13px;
	}
	.signup-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #000;
		border: none;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus {
		background: #3cb094;
        outline: none !important;
	}
	.signup-form a {
		color: #fff;
		text-decoration: underline;
	}
	.signup-form a:hover {
		text-decoration: none;
	}
	.signup-form form a {
		color: #49c1a2;
		text-decoration: none;
	}	
	.signup-form form a:hover {
		text-decoration: underline;
	}
</style>
 </head>

<script  type="text/javascript">
		var make=true;
		function check(){
		if(window.XMLHttpRequest){
			return(new XMLHttpRequest());
		}
		else if(window.ActiveXObject){
			return(new ActiveXObject("Microsoft.XMLHTTP"));
		}
		else return null;
	}
	function sendRequest(){
			var uid=document.forms[0].uid.value;
		if(uid==""){
		}
	else{
		var request=check();
		request.onreadystatechange=function(){handleResponse(request)};
		
		request.open("POST","UseridCheck.jsp?uid="+uid,true);
		request.send(null);
		}
	}
	function handleResponse(request){
		
		if(request.readyState==4){
			s=""+request.responseText;
			if(s.match("true")){
					us.innerText=userid+" is avilable ";
					f9.innerText="";
					make=true;
			}
			else {
				f9.innerText=userid+" is not avilable ";
				us.innerText="";
				make=false;
			}
		}
	}
	function repl(){
		document.location.replace("index.jsp");
	}
	function tests(){
	var val=true;
	var fn=document.forms[0].fn.value;
	var ln=document.forms[0].ln.value;
	var uid=document.forms[0].uid.value;
	var pwd=document.forms[0].pwd.value;
	var cepwd=document.forms[0].cepwd.value;
	var eid=document.forms[0].eid.value;
	var usertype=document.forms[0].usertype.value;
	var city=document.forms[0].city.value;
	var phnumber=document.forms[0].phone.value;
	var qus=document.forms[0].qus.value;
	var ans=document.forms[0].ans.value;
	if(fn==""){
		f1.innerText="Designation required";
		val=false;
	}
	else
		f1.innerText="";
	if(ln==""){
		f2.innerText="Name required";
		val=false;
	}
	else
		f2.innerText="";
	if(uid==""){
		f3.innerText="UserId required";
		val=false;
	}
	else{
		re=/^[0-9]/;
		word=new RegExp(re);
		if(word.exec(uid)){
			f3.innerText="UserId should not start with a Number";
			val=false;
		}
		else{
			f3.innerText="";
			
		}
	}
	if(pwd==""){
		f4.innerText="Password required";
		val=false;
	}
	else if(pwd.length<=6){
		f4.innerText="Password should be minimum of 6 characters";
		val=false;
	}
	else if(pwd!=cepwd){
		f4.innerText="";
		f8.innerText="Passwords do not match";
		val=false;
	}
	else{
		f4.innerText=" ";
		f8.innerText=" ";
	}
	if(eid==""){
		f5.innerText="Email id required";
		val=false;
	}
	else{
		re=/[A-Za-z0-9]+@+[A-Za-z]+.+[A-Za-z]/
		word=new RegExp(re);
		if(!re.exec(eid)){
			f5.innerText="Invalid Email id";
			val=false;
		}
		else
		f5.innerText="";
	}
	if(city=="")
	{
		f6.innerText="city required";
		val=false;
	}
	else {
		re=/^[0-9]/
		word=new RegExp(re);
		if(re.exec(city)){
			f6.innerText="invalid city";
			val=false;
		}
		else
		f6.innerText="";	
		
	}
	if(phnumber=="")
	{
		f7.innerText="phone number required";
		val=false;
	}
	else{
		re=/[A-Za-z]/
		word=new RegExp(re);
		
		if(re.exec(phnumber)||phnumber.length <12)
		{
			f7.innerText="invalid phone number";
			val=false;	
		}
		else

		f7.innerText="";
	 }		
	 if(qus=="")
	 {
	 	qusp.innerText="security question required";
	 	val=false;
	 }
	 else qusp.innerText=" ";
	 if(ans=="")
	 {
	 	ansp.innerText="answer required";
	 	val=false;
	 }
	 else ansp.innerText=" ";
	 if(make==false)
	 	val=false;
	 alert(val);
	return val;
}	
</script>

<body>

   <div class="signup-form">
     <form action="regstore.jsp"  method="post" onsubmit="return tests()" >
			   <h2 align="center">Sign Up</h2>
		   <p align="center">It's free and only takes a minute.</p>
		  <hr>
	             <div class="form-group">
			              <label>FullName*</label>
        	      <input type="text" class="form-control" name="ln" required="required"  maxlength="15">
        	      <p id="f2"></p>
                </div>	
                <div class="form-group">
			         <label> Designation *</label>
        	        <input type="text" class="form-control" name="fn" required="required" maxlength="15">
        	        <p id="f1"></p>
               </div>			
             <div class="form-group">
			         <label> UserId *</label>
        	        <input type="text" class="form-control" name="uid" maxlength="20" onblur="sendRequest()"required="required">
        	        <p id="f3"></p><p id="f9" style="color: red;"></p><p id="us" style="color:yellow;"></p>
               </div>
				
				 <div class="form-group">
			         <label> Password *</label>
        	        <input type="password" class="form-control" name="pwd" maxlength="15" required="required">
        	        <p id="f4">
               </div>
				<div class="form-group">
			         <label> Confirm password *</label>
        	        <input type="password" class="form-control" name="cepwd" maxlength="15" required="required">
        	        <p id="f8">
               </div>
			<div class="form-group">
			         <label> Email Id *</label>
        	        <input type="text" class="form-control" name="eid" maxlength="40" required="required">
        	        <p id="f5">
               </div>
			<div class="form-group">
			         <label>UserType*</label>
        	        <input type="text" class="form-control" name="usertype" maxlength="15" required="required">
        	        <p id="f24">
               </div>	
				<div class="form-group">
			         <label> Department *</label>
        	        <input type="text" class="form-control" name="city" maxlength="15" required="required">
        	        <p id="f6">
               </div>	
              <div class="form-group">
			         <label> Phone Number * +</label>
        	        <input type="text" class="form-control" name="phone" maxlength="12" required="required">
        	        <p id="f7">
               </div>	 
				
			
			
				 <div class="form-group">
              <input type="submit"  value="Sign Up" class="btn btn-primary btn-block btn-lg"/>
                <input type="button" value="cancel" class="btn btn-primary btn-block btn-lg" onclick="repl()"/>
        </div>
				       
				<p class="small text-center">By clicking the Sign Up button, you agree to our <br><a href="#">Terms &amp; Conditions</a>, and <a href="#">Privacy Policy</a></p>	
		</form>
		<div class="text-center">Already have an account? <a href="index.jsp">Login here</a></div>
</div>
</body>

</html>