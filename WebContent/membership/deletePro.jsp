<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
	
	<%
		String boardid = request.getParameter("boarid");
		if(boardid==null) boardid = "1";
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum ==""){
			pageNum = "1";}
		
	%>
	<% 
		int num = Integer.parseInt(request.getParameter("num"));
		String passwd = request.getParameter("passwd");
		MemberDBBean dbPro = MemberDBBean.getInstance();
		
		int check=dbPro.deleteArticle(num,passwd,boardid);
		if(check==1){
	%>
		
		<meta http-equiv="Refresh" content="0;url=../view/Main.jsp">
<%
	}else {
%>	
<script language="JavaScript">
	alert("비밀번호가 맞지 않습니다.")
	history.go(-1);
</script>
<%
	}
%>	        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>