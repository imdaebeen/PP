<%@page import="jmembership.MemberDBBean"%>
<%@page import="jmembership.MemberDataBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<% request.setCharacterEncoding("euc-kr"); %>
		
<jsp:useBean id="article" class="jmembership.MemberDataBean">
<jsp:setProperty name="article" property="*"/> 
</jsp:useBean>	
	<% System.out.println(article); %>
	
	<% 
		MemberDBBean dbPro = MemberDBBean.getInstance();
	
		dbPro.insertArticle(article);
	%>
<a href="/PersonalProject/view/Main.jsp"><h2>가입을 환영합니다.</h2></a>
<a href="/PersonalProject/membership/mList.jsp"><h2>회원목록 보기</h2></a>
</body>
</html>