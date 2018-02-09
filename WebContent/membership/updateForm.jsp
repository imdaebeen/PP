<%@page import="jmembership.MemberDataBean"%>
<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String boardid = request.getParameter("boarid");
	if(boardid==null) boardid ="1";
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum == ""){
		pageNum = "1";
	}
%>
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	try{
		MemberDBBean dbPro = MemberDBBean.getInstance();
		MemberDataBean article = dbPro.getArticles(num,boardid);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="w3-container">
<b>글수정</b>
<form method="post" name="updateform" 
		action="<%=request.getContextPath()%>/membership/updatePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>
<input type="hidden" name="num" value="<%=num %>"/>
<input type="hidden" name="pageNum" value="<%=pageNum %>"/>
	
</div>
	<%
	}catch(Exception e){
		
	}
	%>
</body>
</html>