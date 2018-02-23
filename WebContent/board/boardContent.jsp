<%@page import="jboard.BoardDataBean"%>
<%@page import="jboard.BoardDBBean"%>
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
<div class="w3-text-blue"><b>글내용 보기</b> </div>
	<table class="w3-table w3-border">
		<tr>
			<td class="w3-blue">제목</td>
			<td><input type="text" name="subject" value="<%=article.getSubject()%>"></td>
		</tr>
		<tr >
			<td class="w3-blue">내용</td>
			<td><textarea rows="20" cols="45" name="content"><%=article.getContent()%></textarea> </td>
		</tr>
	</table>
			<input type="submit" value="글 수정" >
			<input type="button" value="글 삭제" onclick="document.location.href='bdeleteform.jsp?num=<%=num%>&pageNum=<%=pageNum%>'">
  			<input type="reset" value="다시 작성">
 			<input type="button" value="목록보기" onclick="document.location.href='board1.jsp?pageNum=<%=pageNum%>'">
 		
			<%
			}catch(Exception e){
			}
			%>
	 </form>		
</center>
<%@include file="/view/footer.jsp"%>
</body>
</html>