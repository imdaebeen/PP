<%@page import="jmembership.MemberDataBean"%>
<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
		String boardid = request.getParameter("boarid");
		if(boardid==null) boardid ="1";
%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum==""){
			pageNum = "1";
		}
	
	try{
			MemberDBBean dbPro = MemberDBBean.getInstance();
			MemberDataBean article = dbPro.getArticles(num,boardid);	
%>		 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
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
<%@include file="../view/adminpage.jsp"%>
<form method="post" name="updateform"action="<%=request.getContextPath()%>/membership/updatePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>
<input type="hidden" name="num" value="<%=num %>"/>
<input type="hidden" name="pageNum" value="<%=pageNum %>"/>

<center>
<div class="w3-text-blue">
<h3><b>글내용 보기</b></h3>
</div>
<hr>
<br/>
<div class="w3-row" style="width:800px; height:300px;">
	<div class="w3-quarter w3-container w3-blue" style="height:100%">
		<h2><b>미니가계부</b></h2>
	</div>
	<div class="w3-threequarter">
	<table class="w3-table w3-margin-left" id="customers">
		<tr>
			<td class="w3-blue w3-center"><b>아이디</b></td>
			<td><input type="text" name="memberid" value="<%=article.getMemberid()%>" disabled style="width:100%"></td>
		</tr>
		<tr >
			<td class="w3-blue w3-center"><b>비밀번호</b></td>
			<td><input type="password" maxlength="12" name="passwd" style="width:100%"> </td>
		</tr>
		<tr>
			<td class="w3-blue w3-center"><b>이름</b></td>
			<td><input type="text" name="name" value="<%=article.getName()%>" style="width:100%"></td>
		</tr>
		<tr>
			<td class="w3-blue w3-center"><b>이메일</b></td>
			<td><input type="text" name="email" value="<%=article.getEmail()%>" style="width:100%"></td>
		</tr>
		<tr>
			<td class="w3-blue w3-center"><b>전화번호</b></td>
			<td><input type="text" name="phone" value="<%=article.getPhone()%>" style="width:100%"></td>
		</tr>
	</table>
	<br/>
			<input type="submit" value="회원수정" class="w3-button w3-blue" >
			<input type="button" value="회원탈퇴" class="w3-button w3-blue" onclick="document.location.href='deleteform.jsp?num=<%=num%>&pageNum=<%=pageNum%>'">
 			<input type="button" value="목록보기" class="w3-button w3-blue" onclick="document.location.href='mList.jsp?pageNum=<%=pageNum%>'">
			
			<%
			}catch(Exception e){
			}
			%>			
	</div>
</div>
</form>
</center>
</body>
</html>