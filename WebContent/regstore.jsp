<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.text.*,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_background_section_top">
		<div class="templatemo_container">
			<div id="templatemo_header">
				<div id="templatemo_logo">
					<h1>DOCUMENT MANAGEMENT SYSTEM</h1>
                    <h2>WE SECURE YOUR DOCUMENTS</h2>
				</div>
                      
        
	</div><!--  End Of Back Ground Section Top  -->
    
                   
                <div id="templatemo_section">
	<%
	Class.forName("org.postgresql.Driver");
    Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/chatbox","postgres","postgress");
	Statement st=con.createStatement();
	String Designation=request.getParameter("fn");
	System.out.println(Designation);
	String Name=request.getParameter("ln");
	String userid=request.getParameter("uid");
	String usertype=request.getParameter("usertype");
	String password=request.getParameter("pwd");
	String eid=request.getParameter("eid");
	String department=request.getParameter("city");
	String phone=request.getParameter("phone");
	String qus=request.getParameter("qus");
	String ans=request.getParameter("ans");
	Date d=new Date();
	SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd");
	try{
	st.executeUpdate("insert into public.user_master values('"+userid+"','"+password+"','"+usertype+"','"+Name+"','"+Designation+"','"+eid+"','"+department+"','"+s.format(d)+"','"+phone+"','null','null','null','null')");
	%>
	<p align="center"> you have successfully registered.<br>click here to <a href="index.jsp">login</a>
	
	</p>
	   <% }
	catch(Exception e){
	%>     <p> registration failed</p> 
	<%} %>  	  
           	 
	
	</div></div></div>
       
	</body>
</html>