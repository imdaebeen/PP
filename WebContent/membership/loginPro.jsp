<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String passwd = request.getParameter("passwd");
	String id = request.getParameter("id");
	
	MemberDBBean dbPro = MemberDBBean.getInstance();
	
	boolean result = dbPro.loginCheck(id, passwd);
	
	if(result){
		session.setAttribute("MEMBERID", id);
		session.setAttribute("MEMBERPasswd", passwd);
%>
<meta http-equiv="Refresh" content="0;url=/PersonalProject/view/Main.jsp">
<% 	
	}else{
%>
	<script>
	alert("아이디와 비밀번호를 확인하세요.");
	history.go(-1)
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