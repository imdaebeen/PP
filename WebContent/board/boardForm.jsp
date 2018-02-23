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
textarea {
	resize: none;
}
</style>
</head>
<body>
<center>
<h1 class="w3-text-blue w3-animate-zoom w3-padding-24">게시글 등록</h1>
</center>
<br>
<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;">

<form class="w3-container" method="post" name="mJoinform" 
	action="<%=request.getContextPath()%>/board/boardPro.jsp">
	
<div class="w3-right-align">
<select class="w3-select w3-right-align w3-border" style="width:130px" name="boardid">
  <option value="1"selected>공지사항</option>
  <option value="2">자주하는 질문</option>
</select>
<hr>
</div>	
	<div class="w3-section">
		<div class="w3-row">
		<div class="w3-container w3-quarter w3-right-align" style="width:100px">
			<strong>제목</strong>
		</div>
	
		<div class="w3-container w3-threequarter w3-left-align">	
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="" name="subject"><br/>
		</div>
		</div>
		<div class="w3-row">
		<div class="w3-container w3-quarter w3-right-align" style="width:100px">
			<strong>내용</strong>
		</div>

		<div class="w3-container w3-threequarter w3-left-align">	
			<textarea rows="20" cols="45" name="content"></textarea><br/><br/>
		</div>
		</div>
		<div class="w3-row">
		<div class="w3-container w3-quarter w3-right-align" style="width:100px">
			<strong>비밀번호</strong>
		</div>
		<div class="w3-container w3-threequarter w3-left-align">	
			<input class="w3-input w3-border w3 padding-16" type="password" name="passwd"><br/>
		</div>
		</div>
		<div class="w3-center">
		<input type="submit" value="등록">
		</div>
	</div>
</div>
</form>
</body>
</html>