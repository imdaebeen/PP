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
	<b>글 삭제</b><br>
	<h2>정말삭제하시겠습니까?</h2>
<form method="post" name="bdeleteform" 
		action="bdeletePro.jsp?pageNum=<%=pageNum %>" onsubmit="return deleteSave()" >
		<table class="table-bordered" width="360">
			<tr height="30">
				<td align=center><b>비밀번호를 입력해 주세요.</b></td>
			</tr>
			<tr height="30">
				<td align=center>비밀번호:
				<input type="password" name="passwd" size="8" maxlength="12">
				<input type="hidden" name="num" value="<%=num %>">
				</td>
			</tr>
			<tr height="30">
				<td align=center>
					<input type="submit" value="글 삭제 ">
				</td>	
			</tr>	
		</table>
	</form>
</center>
</div>
</body>
</html>