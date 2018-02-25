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
<br>
<div class="w3-sidebar w3-bar-block" style="width:15%">
  <h2 class="w3-bar-item w3-text-blue"><b>관리자 페이지</b></h2>
  <a href="../membership/mList.jsp" class="w3-bar-item w3-button">회원정보 수정</a>
  <a href="../board/boardForm.jsp" class="w3-bar-item w3-button">게시물 업로드</a>
</div>
</body>
</html>