<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
body{
	background-color:#F9FFFF;
}
</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<center>
	<div class="w3-border w3-center w3-margin-top" style="width:800px; height:800px">
		<div class="w3-blue">
		<strong><font size=5>������������</font></strong>
		</div>
		<div class="w3-row">
  			<div class="w3-half w3-container w3-border">
   				<a href="../membership/mList.jsp" class="w3-bar-item w3-button w3-block" style="width:400"><font size=4>ȸ������ ����</font></a>
  			</div>
  		<div class="w3-half w3-container w3-border">
    			<a href="../board/boardForm.jsp" class="w3-bar-item w3-button w3-block" style="width:400"><font size=4>�Խù� ���ε�</font></a> 
  			</div>
		</div>
	</div>
<%@include file="/view/footer.jsp"%>	
</center>
</body>
</html>