<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <% String contextpath=request.getContextPath();%> 
   <head>
<script src="<%=contextpath %>/org/cometd.js" type="text/javascript"></script> 
<script type="text/javascript" src="<%=contextpath %>/org/cometd/AckExtension.js"></script>
<script type="text/javascript" src="<%=contextpath %>/org/cometd/ReloadExtension.js"></script>
<script type="text/javascript" src="<%=contextpath %>/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="<%=contextpath %>/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="<%=contextpath %>/jquery/jquery.cometd.js"></script>
<script type="text/javascript" src="<%=contextpath %>/jquery/jquery.cometd-reload.js"></script>
<script type="text/javascript" src="<%=contextpath %>/chat.window.js"></script>
<script type="text/javascript" src="<%=contextpath %>/comet.chat.js"></script>
<link type="text/css" rel="stylesheet" href="<%=contextpath %>/comet.chat.css"/>
<script type="text/javascript">
    
    var chatWindowArray = [];
    
   var config = {
        contextPath: '${pageContext.request.contextPath}'
    };
	
	function getChatWindowByUserPair(loginUserName, peerUserName) {
		
		var chatWindow;
		
		for(var i = 0; i < chatWindowArray.length; i++) {
			var windowInfo = chatWindowArray[i];
			if (windowInfo.loginUserName == loginUserName && windowInfo.peerUserName == peerUserName) {
				chatWindow =  windowInfo.windowObj;
			}
		}
		
		return chatWindow;
	}
	
	function createWindow(loginUserName, peerUserName) {
		
		var chatWindow = getChatWindowByUserPair(loginUserName, peerUserName);
		
		if (chatWindow == null) { //Not chat window created before for this user pair.
			chatWindow = new ChatWindow(); //Create new chat window.
			chatWindow.initWindow({
				loginUserName:loginUserName, 
				peerUserName:peerUserName,
				windowArray:chatWindowArray});
			
			//collect all chat windows opended so far.
			var chatWindowInfo = { peerUserName:peerUserName, 
					               loginUserName:loginUserName,
					               windowObj:chatWindow 
					             };
			
			chatWindowArray.push(chatWindowInfo);
    	}
		
		chatWindow.show();
		
		return chatWindow;
	}

	function join(userName){
		$.cometChat.join(userName);
	}
</script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	String uid=(String)session.getAttribute("userid");
%>
<h1 align="center">welcome&nbsp;<%=uid%></h1>
<div id="chat-sidebar">
  <%-- <img src="<%=contextpath %>/users.png" /> --%>
 
<script type="text/javascript">

         
	var userName = '<%=session.getAttribute("userid")%>';
	
 	$(document).ready(function(){ 
		$.cometChat.onLoad({memberListContainerID:'members'});
		join(userName);
	});
</script>
<div id="members"></div>
</div>
</body>
</html>
