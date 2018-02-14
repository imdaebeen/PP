<%@page import="java.util.List"%>
<%@page import="jmembership.MemberDataBean"%>
<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%
	String boardid = request.getParameter("boarid");
	if(boardid==null) boardid ="1";
%>
<%
	int pageSize =5;
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum == ""){
	pageNum = "1";
	}
	
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1)*pageSize+1;
	int endRow = currentPage*pageSize;
	int count = 0;
	int number = 0;
	
	List articleList = null;

	MemberDBBean dbpro = MemberDBBean.getInstance();
	count = dbpro.getArticleCount(boardid);
	if(count > 0){
		articleList = dbpro.getArticles(startRow,endRow,boardid);
	}
	number = count -(currentPage-1)*pageSize;
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
  <div class="w3-container">
	<h3>전체 회원수 : <%=count %>)</h3>
  <h2>한눈에 회원목록</h2>
  <hr>
  <%
		if(count==0){
	%>
		<table class="w3-table-bordered" width="700">
			<tr class="w3-grey">
			<td align="center">회원이 아무도 없어용</td>
		</table>
  
	<% }else{ %>
  <table class="w3-table w3-bordered" width="700">
    <tr class="w3-blue">
      <td>번호</td>
      <td>아이디</td>
      <td>이름</td>
      <td>이메일</td>
      <td>전화번호</td>
    </tr>
	<% 
		for(int i=0;i<articleList.size();i++) { 
			MemberDataBean article = (MemberDataBean)articleList.get(i);
	%>	    
    <tr>
      <td><%=number--%></td>
      <td><%=article.getMemberid()%></td>
      <td><a href="mcontent.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage %>"><%=article.getName()%></td>
      <td><%=article.getEmail()%></td>
      <td><%=article.getPhone()%></td>
    </tr>
    	<% } %>
  </table>
  	<% } %>
</div>
<div class="w3-center">
		<%	
		int bottomLine =3; 
		if(count > 0){
		int pageCount = count/pageSize +(count%pageSize == 0 ? 0 : 1);
		int startPage = 1 +(currentPage -1) /bottomLine*bottomLine;
		int endPage = startPage + bottomLine -1;
		
		if(endPage > pageCount) 
			endPage = pageCount;
		if(startPage > bottomLine){	
		%>
		<a href="mList.jsp?pageNum=<%=startPage-bottomLine %>">[이전]</a>
		<% 
			} 
		
			for(int i = startPage; i<= endPage; i++ ){ 
		%>
			<a href="mList.jsp?pageNum=<%=i%>">
			<%
			if(i != currentPage) {
				out.print("["+i+"]");
			}else{ 
				out.print("<font color='red'>["+i+"]</font>");
			}
			%>
			</a>
		<%
			}
		if(endPage < pageCount){ 
		%>
		<a href="mList.jsp?pageNum=<%=startPage+bottomLine %>">[다음]</a>
		<% 
			}
		}
		%>
</div>

</body>
</html>