<%@page import="jboard.BoardDataBean"%>
<%@page import="jboard.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
		String boardid = request.getParameter("boardid");
		if(boardid==null) boardid ="1";
%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum==""){
			pageNum = "1";
		}
	try{
			BoardDBBean dbPro = BoardDBBean.getInstance();
			BoardDataBean article = dbPro.getArticles(num,boardid,"content");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
textarea {
	resize: none;
}
</style>
</head>
<body>
<form method="post" name="boardupdateform" action="<%=request.getContextPath()%>/board/boardupdatePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>
<input type="hidden" name="num" value="<%=num %>"/>
<input type="hidden" name="pageNum" value="<%=pageNum %>"/>
<%@include file="/view/header.jsp"%>
<center>
<br>
<% 
if(session.getAttribute("MEMBERID").equals("admin")){
%>
<div class="w3-row">
<div class="w3-third w3-container w3-white w3-right-align">
    <%
		if(boardid=="1"){
	%>
    <h2><b>공지사항</b></h2>
    <%
		}else{
	%>
	<h2><b>자주하는 질문(FAQ)</b></h2>
	<%
		}
	%>
</div>
</div>
<hr>
	<table class="w3-table w3-border" style="width:800px; height:400px;">
		<tr>
			<td class="w3-blue w3-border" style="height:10px;width:100px">제목</td>
			<td class="w3-border"><input type="text" name="subject" value="<%=article.getSubject()%>"></td>
		</tr>
		<tr >
			<td class="w3-blue w3-border" style="height:100px;width:100px">내용</td>
			<td class="w3-border"><textarea rows="20" cols="100" name="content"><%=article.getContent()%></textarea> </td>
		</tr>	
	</table>
			<br/>
			<input class="w3-button w3-border w3-blue" type="submit" value="글 수정" >
			<input class="w3-button w3-border w3-blue" type="button" value="글 삭제" onclick="document.location.href='bdeleteform.jsp?num=<%=num%>&pageNum=<%=pageNum%>'">
  	
		<%
		}else if(session.getAttribute("MEMBERID") == null){
		%>
		<div class="w3-row">
			<div class="w3-third w3-container w3-white w3-right-align">
    		<%
		if(boardid=="1"){
	%>
    <h2><b>공지사항</b></h2>
    <%
		}else{
	%>
	<h2><b>자주하는 질문(FAQ)</b></h2>
	<%
		}
	%>
			</div>
			</div>
			<hr>	
			<table class="w3-table w3-border" style="width:800px; height:400px;">
		<tr>
			<td class="w3-blue w3-border" style="height:10px;width:100px">제목</td>
			<td class="w3-border"><%=article.getSubject()%></td>
		</tr>
		<tr >
			<td class="w3-blue" style="height:100px;width:100px">내용</td>
			<td><%=article.getContent()%></td>
		</tr>	
	</table>
 		<%
		}else{
		%>	
		<div class="w3-row">
			<div class="w3-third w3-container w3-white w3-right-align">
    		<%
		if(boardid=="1"){
	%>
    <h2><b>공지사항</b></h2>
    <%
		}else{
	%>
	<h2><b>자주하는 질문(FAQ)</b></h2>
	<%
		}
	%>
			</div>
			</div>
			<hr>	
			<table class="w3-table w3-border" style="width:800px; height:400px;">
		<tr>
			<td class="w3-blue w3-border" style="height:10px;width:100px">제목</td>
			<td class="w3-border"><%=article.getSubject()%></td>
		</tr>
		<tr >
			<td class="w3-blue" style="height:100px;width:100px">내용</td>
			<td><%=article.getContent()%></td>
		</tr>	
	</table>
	<% 
		}
 	%>	
	 </form>		
</center>
		<%
			}catch(Exception e){
			}
			%>
	<br/><br/><br/>
		<center>
	<%
		if(boardid=="1"){
	%>
	<a href = ../view/board1.jsp class="w3-bar-item w3-button w3-blue">목록</a>
	<%
		}else{
	%>
	<a href = ../view/board2.jsp class="w3-bar-item w3-button w3-blue">목록</a>
	<%
		}
	%>
	<br/><br/><br/>
		</center>
<%@include file="/view/footer.jsp"%>
</body>
</html>