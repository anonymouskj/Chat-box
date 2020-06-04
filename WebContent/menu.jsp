<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}


</style>
</head>
	<body>
	<%
		String uid=(String)session.getAttribute("userid");
		
	%>   
	

<!-- <ul id="nav">
		  <li><a href="#">settings</a>
		  		<ul>
		  			<li><a href="changepwd.jsp" >change password</a></li>
		  		</ul>
		  </li>
	<li><a href="logout.jsp" >Logout</a></li>
		  
		  
	</ul> -->
		<div class="sidebar">
  <a href="hometype.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="changepwd.jsp"><i class="fa fa-fw fa-wrench"></i> Settings</a>
  <a href="logout.jsp"><i class="fa fa-fw fa-user"></i> Logout</a>
  <a href="application.jsp"><i class="fa fa-fw fa-envelope"></i> Chat</a>
</div>
		
		<!-- <script type="text/javascript">
		<!--
		var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
	
		</script>  -->
		<br /><br /><br />
	</body>
</html>
