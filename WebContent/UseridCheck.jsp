<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
	
	Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/chatbox","postgres","postgress");
	Statement st=con.createStatement();
	String uid=request.getParameter("uid");
	ResultSet rs=st.executeQuery("select user_id from public.user_master");
	int i=2;
	while(rs.next())
	{	String s=rs.getString("user_id");
		if(s.equalsIgnoreCase(uid)){
			i=1;
			break;
		}
			
		else i=0;
		
	}
	if(i==1) out.println("false");
	else  out.println("true");
%>		

