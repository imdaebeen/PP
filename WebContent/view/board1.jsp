<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jboard.BoardDataBean"%>
<%@page import="java.util.List"%>
<%@page import="jboard.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%
	String boardid = request.getParameter("boardid");
	if(boardid==null) boardid ="1";
%>
<%
	int pageSize =5;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
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

	BoardDBBean dbpro = BoardDBBean.getInstance();
	count = dbpro.getArticleCount(boardid);
	if(count > 0){
		articleList = dbpro.getArticles(startRow, endRow, boardid);
	}
	number = count -(currentPage-1)*pageSize;
	
	int bottomLine =3; 
	if(count > 0){
	int pageCount = count/pageSize +(count%pageSize == 0 ? 0 : 1);
	int startPage = 1 +(currentPage -1) /bottomLine*bottomLine;
	int endPage = startPage + bottomLine -1;
	int totalPage = count/pageSize+1;
		
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
ul > li{
	display:inline;
}
li{
	list-style:none;
}
</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row">
<div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>��������</b></h2> 
</div>
</div>
<hr>
<center>
<div class="w3-padding-64" style="width:980px">
	<%
		if(count==0){
	%>
		<table class="w3-table-bordered" style="width:900px">
			<tr class="w3-grey">
			<td align="center">ȸ���� �ƹ��� �����</td>
		</table>
  
	<% }else{ %>
	<div class="w3-left-align"style="border-bottom: 1px dashed #E6E6E6">
    <div class="w3-row">
    <div class="w3-half w3-container">
    <h6>�� <%=count%>��(<%=currentPage%>/<%=totalPage %> page)</h6>
    </div>
    <div class="w3-half w3-container w3-right-align">
    <div class="w3-row">
    	<div class="w3-quarter w3-container">
    	<select class="w3-select w3-border" name="option" style="width:100px">
  		<option value="" selected>����</option>
  		<option value="1">����</option>
  		<option value="2">����+����</option>
		</select>
		</div>
		<div class="w3-half w3-container">
		<input class="w3-input w3-border" type="text" placeholder="�˻�� �Է��ϼ���">
		</div>
		<div class="w3-quarter w3-container">
		<span><button class="w3-button w3-blue">�˻��ϱ�</button></span>
		</div>
		</div>
    </div>
 	</div>
	</div>
	<br>
 <table id="customers">
  <tr class="w3-blue">
    <td style="width:60px">��ȣ</td>
    <td>����</a></td>
    <td style="width:100px">�����</td>
    <td style="width:70px">��ȸ��</td>
  </tr>
  <% 
		for(int i=0;i<articleList.size();i++) { 
			BoardDataBean article = (BoardDataBean)articleList.get(i);
   %>
  <tr>
    <td><%=number--%></td>
    <td><a href="/PersonalProject/board/boardContent.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage %>&boardid=<%=boardid%>"><%=article.getSubject()%></td>
    <td><%=sdf.format(article.getReg_date())%></td>
    <td><%=article.getReadcount() %></td>
  </tr>
  <%
	}
  %>
	</table>
  <% 
	if(session.getAttribute("MEMBERID") == null){
	
	}else{
		if(session.getAttribute("MEMBERID").equals("admin")){
	%>	
	<div class="w3-right-align">
	<a href="/PersonalProject/board/boardForm.jsp" class="w3-button w3-wide">�۾���</a>
	</div>
<%
			} 
		} 
  	}
%>
<div class="w3-center">
		<%
		
		if(endPage > pageCount) 
			endPage = pageCount;
		if(startPage > bottomLine){	
		%>
		<a href="board1.jsp?pageNum=<%=startPage-bottomLine %>">[����]</a>
		<% 
			} 
		
			for(int i = startPage; i<= endPage; i++ ){ 
		%>
			<a href="board1.jsp?pageNum=<%=i%>">
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
		<a href="board1.jsp?pageNum=<%=startPage+bottomLine %>">[����]</a>
		<% 
		}
	}
		%>
</div>
</div>
</div>
<div class="w3-padding-32">
	<div class="w3-border" style="background-color:#B2CCFF">
		<ul>
			<li><h6>���� �������� ����� ��� ���Ǽ��� ���� �����Ͻʴϱ�?</h6></li>
			<li><label for="answer1"><input type="radio" name="answer" id="answer1" value="5" class="radioType"/> �ſ� ����</label></li>
			<li><label for="answer2"><input type="radio" name="answer" id="answer2" value="4" class="radioType"/> ����</label></li>
			<li><label for="answer3"><input type="radio" name="answer" id="answer3" value="3" class="radioType"/> ����</label></li>
			<li><label for="answer4"><input type="radio" name="answer" id="answer4" value="2" class="radioType"/> �Ҹ���</label></li>
			<li><label for="answer5"><input type="radio" name="answer" id="answer5" value="1" class="radioType"/> �ſ� �Ҹ���</label></li>
			<li><input type="button" id="btnPoll" class="float-R" value="�����ϱ�" /></li>
		</ul>
	</div>
</div>
</div>

</center>
<%@include file="/view/footer.jsp"%>

</body>
</html>