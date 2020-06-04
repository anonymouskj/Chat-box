<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
	
	function goBack() {
		  window.history.back();
		}
	
		function  valids(){
			var opw=document.cp.opwd.value;
			var npw=document.cp.npwd.value;
			var cpw=document.cp.cpwd.value;
			if(opw==""||npw==""||cpw==""){
					if(opw=="")
						opmsg.innerText=" current password required";
					else opmsg.innerText=" ";
					if(npw=="")
						npmsg.innerText="new  password required";
					else npmsg.innerText=" ";
					
					if(cpw=="")
						ns.innerText=" conform password";
					else ns.innerText=" ";
					return false;
			}
			else if(npw.length<6){
						npmsg.innerText="password should me minimum of 6 characters";
					return false;
					}
			else if(npw!=cpw){
					ns.innerText="password do not match";
				return false;
			}
				
		}
		
	</script>
<style>
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
<body>
<jsp:include page="header.jsp"></jsp:include>
    
     <div class="signup-form">
    <form name="cp" onsubmit=" return valids()" action="change.jsp" method="post">
	   <div class="form-group">
			              <label>Current Password*</label>
        	      <input type="password" class="form-control" name="opwd"  maxlength="15">
        	      <p id="opmsg"></p>
                </div>		
       <div class="form-group">
			              <label>New Password*</label>
        	      <input type="password" class="form-control" name="npwd"  maxlength="15">
        	      <p id="npmsg"></p>
                </div>	         
	  <div class="form-group">
			              <label>Confirm Password*</label>
        	      <input type="password" class="form-control" name="cpwd" maxlength="15">
        	      <p id="ns"></p>
                </div>	 
	
	
	        
	         <div class="form-group">
              <input type="submit" value="change" class="btn btn-primary btn-block btn-lg"/>
               
        </div>
   </form>
  </div> 
   </body>
</html>