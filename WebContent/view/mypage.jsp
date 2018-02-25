<%@page import="jmembership.MemberDataBean"%>
<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
		String boardid = request.getParameter("boarid");
		if(boardid==null) boardid ="1";
%>
<%
		
		String memberid = (String)session.getAttribute("MEMBERID");

	try{
			MemberDBBean dbPro = MemberDBBean.getInstance();
			MemberDataBean article = dbPro.getArticles1(memberid,boardid);	
%>		 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}
#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    color: white;
}
</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<form method="post" name="updateform"action="<%=request.getContextPath()%>/membership/updatePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>
<input type="hidden" name="memberid" value="<%=memberid %>"/>
<input type="hidden" name="num" value="<%=article.getNum() %>"/>
<center>
<div class="w3-text-blue">
<h2><b>회원내용</b></h2>
<hr>
</div>
<div class="w3-row" style="width:900px; height:300px;">
	<div class="w3-quarter w3-container w3-blue" style="height:100%">
		<h2><b>미니가계부</b></h2>
	</div>
	<div class="w3-threequarter">
	<table class="w3-table w3-margin-left" id="customers">
		<tr>
			
			<td class="w3-blue w3-center">아이디</td>
			<td><input type="text" name="memberid" value="<%=article.getMemberid()%>" disabled></td>
		</tr>
		<tr >
			<td class="w3-blue w3-center">비밀번호</td>
			<td><input type="password" maxlength="12" name="passwd"> </td>
		</tr>
		<tr>
			<td class="w3-blue w3-center">이름</td>
			<td><input type="text" name="name" value="<%=article.getName()%>"></td>
		</tr>
		<tr>
			<td class="w3-blue w3-center">이메일</td>
			<td><input type="text" name="email" value="<%=article.getEmail()%>"></td>
		</tr>
		<tr>
			<td class="w3-blue w3-center">전화번호</td>
			<td><input type="text" name="phone" value="<%=article.getPhone()%>"></td>
		</tr>
	</table>
		<br/>
			<input type="submit" value="회원수정" class="w3-button w3-blue" >
			<input type="button" value="회원탈퇴" class="w3-button w3-blue" onclick="document.location.href='../membership/deleteform2.jsp?num=<%=article.getNum() %>'">
			<%
			}catch(Exception e){
			}
			%>			
	</div>
</div>
</form>
</center>
<br/>
<%@include file="/view/footer.jsp"%>
</body>
</html>