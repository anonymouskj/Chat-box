<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
  <jsp:include page="header.jsp"></jsp:include> 
<%
	
	String pwd=request.getParameter("opwd");
	String npwd=request.getParameter("npwd"); 
	String uid=(String)session.getAttribute("userid");
	
	Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/chatbox","postgres","postgress");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select password from public.user_master where user_id='"+uid+"'");
	boolean buf=false;
	while(rs.next()){
		if(rs.getString("password").equals(pwd)){
			st.executeUpdate("update public.user_master set password='"+npwd+"' where user_id='"+uid+"' ");
			buf=true;
			break;
		}		
	}
	if(buf){
%> 
	<h3 align="center">password  changed</h3>
<%
	}
	else{
%> 
	<h3 align="center">password is not changed</h3>
<%	}
%>
