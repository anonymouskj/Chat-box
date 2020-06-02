	<jsp:include page="header.jsp"></jsp:include>
	<% 
	session.invalidate();
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
