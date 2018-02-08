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
	background-color:#E6E6E6;
}
h1{
	color:blue;
	font-weight:900;
}
</style>
</head>
<body>
<center>
<h1 class="w3-text-blue w3-animate-zoom w3-padding-24">금융상품한눈에</h1>
</center>
<br>

<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:800px;">

<div class="w3-container">

<img src="" class="w3-circle" alt="사람">
<h2><b>회원가입</b></h2>
	<form class="w3-container" method="post" name="mJoinform" 
	action="<%=request.getContextPath()%>/membership/mwritePro.jsp">
		<div class="w3-section">
			<b>아이디</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="id를 입력하세요."
			name="userid">
			
			<b>비밀번호</b>
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="pw를 입력하세요."
			name="userpw1">
			
			<b>비밀번호 재확인</b>
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="pw를 입력하세요."
			name="userpw2">
			
			
			<b>이름</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="이름을 입력하세요."
			name="username">
			
	
			<b>E-MAIL</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="이메일을 입력하세요."
			name="useremail">
			
			<b>휴대전화번호</b>
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="전화번호를 입력하세요."
			name="userphone">
			
		</div>
	</form>
</div>
    </div>
<center>
<br>
<div class="w3-blue w3-margin-top w3-animate-zoom" style="max-width:800px;">
      <h2>가입하기</h2>
</div>
</center>
</body>
</html>