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
input[type=submit], input[type=reset] {
    background-color: DodgerBlue;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    
}
input[type=reset]:hover {
    background-color: gray;  
}
input[type=submit]:hover{
	background-color: gray; 
}
</style>
</head>
<body>
<center>
<h1 class="w3-text-blue w3-animate-zoom w3-padding-24">금융상품한눈에</h1>
</center>
<br>
<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;">
	<form class="w3-container" method="post" name="mJoinform" 
	action="<%=request.getContextPath()%>/membership/joinPro.jsp">
		<div class="w3-section">
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="아이디"
			name="memberid"><br/>
			
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="비밀번호"
			name="passwd"><br/>
		
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="이름"
			name="name"><br/>
			
			<input class="w3-input w3-border w3 padding-16" type="" placeholder="이메일"
			name="email"><br/>
			
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="전화번호"
			name="phone"><br/>
			
		</div>
</div>
<center>
<br>
<div class="w3-blue w3-margin-top w3-animate-zoom" style="max-width:300px; height:100px">
<br>      
      <input type="submit" value="가입하기">
      <input type="reset" value="다시작성"> 
</div>
</center>
</form>
</body>
</html>