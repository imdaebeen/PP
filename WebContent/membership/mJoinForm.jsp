<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
h2{
	text-align:center;
}
body{
	background-color:#F9FFFF;
}
h1{
	color:blue;
	font-weight:900;
}
</style>
</head>
<body>
<center>
<h1 class="w3-text-blue w3-animate-zoom w3-padding-24">������ǰ�Ѵ���</h1>
</center>
<br>

<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:800px;">

<div class="w3-container">

<img src="" class="w3-circle" alt="���">
<h2><b>ȸ������</b></h2>
	<form class="w3-container" method="post" name="mJoinform" 
	action="<%=request.getContextPath()%>/membership/joinPro.jsp">
		<div class="w3-section">
			<b>���̵�</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="id�� �Է��ϼ���."
			name="memberid">
			
			<b>��й�ȣ</b>
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="pw�� �Է��ϼ���."
			name="passwd">
			
			<b>��й�ȣ ��Ȯ��</b>
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="pw�� �Է��ϼ���."
			name="passwd">
			
			
			<b>�̸�</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="�̸��� �Է��ϼ���."
			name="name">
			
	
			<b>E-MAIL</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="�̸����� �Է��ϼ���."
			name="email">
			
			<b>�޴���ȭ��ȣ</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���."
			name="phone">
			
		</div>
	
</div>
    </div>
<center>
<br>
<div class="w3-blue w3-margin-top w3-animate-zoom" style="max-width:500px; height:100px">
<br>      
      <input type="submit" value="�����ϱ�">
</div>
</center>
</form>
</body>
</html>