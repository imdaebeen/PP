<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum"); 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<div class="w3-container">
	<b>ȸ������</b><br>
	<h2>���������Ͻðڽ��ϱ�?</h2>
<form method="post" name="deleteform" 
		action="deletePro.jsp?pageNum=<%=pageNum %>" onsubmit="return deleteSave()" >
		<table class="table-bordered" width="360">
			<tr height="30">
				<td align=center><b>��й�ȣ�� �Է��� �ּ���.</b></td>
			</tr>
			<tr height="30">
				<td align=center>��й�ȣ:
				<input type="password" name="passwd" size="8" maxlength="12">
				<input type="hidden" name="num" value="<%=num %>">
				</td>
			</tr>
			<tr height="30">
				<td align=center>
					<input type="submit" value="ȸ��Ż��">
					<input type="button" value="ȸ�����" onclick="document.location.href='mlist.jsp?pageNum=<%=pageNum %>'">
				</td>	
			</tr>	
		</table>
	</form>
</center>
</div>
</body>
</html>