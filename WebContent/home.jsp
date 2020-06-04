<html>
 <%String contextpath=request.getContextPath(); %>
<head>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
    font-family: "Lato", sans-serif;
}



.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #000;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 30px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 10px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}

img {
 opacity: 0.7;
  display: block;
  margin-left: auto;
      align:center;
  margin-right: auto;
  width: 50%;
}
.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}
</style>
<script type="text/javascript">
function repl(){
	document.location.replace("reg.jsp");
	//document.location.replace("reg.jsp");
}
function valid1(){
					var uname=document.forms[0].uname.value;
					var pwd=document.forms[0].pwd.value;
					
					var val=true;
					if(uname==""){
						f1.innerText="username required";
							val=false;
					}
					else f1.innerText=" ";
					if(pwd==""){
						f2.innerText="password required";
						val=false;
					}
					else f2.innerText=" ";
					return val;
}
</script>
</head>
<body>
	<div class="sidenav">
         <div class="login-main-text">
            <h2 align="center"> Want to Chat  ?</h2>
            <p align="center">Login or register from here to access.</p>
         </div>
      </div><!--  End Of Back Ground Section Top  -->
    
                   
            <div class="main">
            <div class="col-md-5 col-sm-12">
         <fieldset>
			<legend style="color:white;">login</legend>   
            <div class="login-form">    	
              <form action="login.jsp" method="post" onsubmit="return valid1()" >
			      <img src="<%=contextpath %>/users.png" /> 
                <p style="color: red;">invalid username or password</p>
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" name="uname" placeholder="User Name">
                     <p id="f1"></p>
                  </div>
			                 
			     <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" name="pwd" placeholder="Password">
                     <p id="f2"></p>
                </div>
		
		      <input type="submit" value="Login" class="btn btn-black">
		      <input type="button" value="Register" onclick="repl()" class="btn btn-black">
		     </form>
			   
			
			  </div>
		</fieldset>	  
         </div>
      </div>
</body>

</html>