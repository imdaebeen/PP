<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum"); 
String boardid = request.getParameter("boardid");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@include file="../view/adminpage.jsp"%>
<center>
<div class="w3-container w3-text-blue">
	<h2><b>�Խñ� ����</b></h2><br>
	<hr>
</div>
<form method="post" name="bdeleteform" 
		action="bdeletePro.jsp?pageNum=<%=pageNum %>" onsubmit="return deleteSave()" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>		
			<div align=center class="w3-text-blue">
			<h3><b>��й�ȣ�� �Է��� �ּ���.</b></h3>
			</div>
				
				<div style="height:30">
				<b>��й�ȣ:</b>
				<input type="password" name="passwd" size="8" maxlength="12">
				<input type="hidden" name="num" value="<%=num %>">
				</div>
			<br/>
			<div style="height:30">
				<input type="submit" value="�� ����" class="w3-button w3-blue">
				<input type="button" value="�����������̵�" class="w3-button w3-blue" onclick="document.location.href='../view/Main.jsp'">
			</div>
	</form>
</center>
</div>
</body>
</html>