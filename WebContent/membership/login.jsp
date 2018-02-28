<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
</style>
</head>
<body>
<center>
<h1 class="w3-text-blue w3-animate-zoom w3-padding-24">������ǰ�Ѵ���</h1>

<br>
<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:500px; height:250px;">
	<div class="w3-center">
	<img src="../membership/image/don.png">
	</div>
	<div class="w3-padding-32 w3-center">
	<form class="w3-container" method="post" name="mloginform" 
	action="<%=request.getContextPath()%>/membership/loginPro.jsp">
		<div class="w3-row">
		<div class="w3-container w3-quarter w3-right-align" style="width:50px">
			<img src="../membership/image/account2.png">
		</div>	
		<div class="w3-container w3-threequarter w3-left-align">
			<input class="w3-input w3-border w3 padding-16" type="text" placeholder="�α���" name="id"><br/>
		</div>
		</div>
		<div class="w3-row">
		<div class="w3-container w3-quarter w3-right-align" style="width:50px">
			<img src="../membership/image/lock.png">
		</div>
		<div class="w3-container w3-threequarter w3-left-align">	
			<input class="w3-input w3-border w3 padding-16" type="password" placeholder="��й�ȣ" name="passwd"><br/>
		</div>
		</div>
	</div>
</div>
<br>
</div>

<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:500px;">
<div class="w3-margin-top w3-animate-zoom" style="max-width:300px; height:150px">
<br>      
      <input type="submit" value="�α���">
      <a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
  //<![CDATA[
    // ����� ���� JavaScript Ű�� ������ �ּ���.
    Kakao.init('95021fb78b585a72a2c54e93ec655b4f');
    // īī�� �α��� ��ư�� �����մϴ�.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        alert("����?");
      },
      fail: function(err) {
         /* alert(JSON.stringify(err)); */
      }
    });
  //]]>
</script>
</div>
</div>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="w3-animate-zoom w3-right-align" style="max-width:500px;">���̵� ��й�ȣ�� �ؾ�����̳���?</div>
</center>
</form>
</body>
</html>