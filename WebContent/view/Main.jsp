<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/PersonalProject/css/common.css" />
<style type="text/css">
#work{
	width:1400px;
}
#mainbottom{
	border-style:solid;
	width:1600px;
}
#myNavbar{
	width:1050px; margin:0 auto;position:relative;
}
#id{
	 display:inline;
}
#content{
	background-color:#F9FFFF;
}
#id{
	height:480px;
}
</style>
</head>
<body>
<!-- 상단 -->
<%@include file="/view/header.jsp"%>
<!-- 본문 -->	
<div id="content">
<center>
<div class="w3-container " style="padding:32px;" id="work">
	<div class="w3-row-padding" style="margin-top:15px;">
	<br>
  	<div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/pig.jpg" alt="부자되세요" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">부자되세요!</p>
          <br>
          <p class="w3-medium">예금</p>
          <br>
          <p class="w3-medium">적금</p>
          <br>
          <p class="w3-medium">주식</p>
          <br>
          <p class="w3-medium">펀드</p>
          <br>
          <p class="w3-medium">금융절세상품</p>
      </div>
    </div>
    </div>
    <div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/H.JPG" alt="필요하세요" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">필요하세요?</p>
          <br>
          <p class="w3-medium">주택담보대출</p>
          <br>
          <p class="w3-medium">전세자금대출</p>
          <br>
          <p class="w3-medium">개인신용대출</p>
          <br>
          <p class="w3-medium">중금리신용대출</p>
          <br>
          <p class="w3-medium">주택금융공사대출</p>
          <br>
          <p class="w3-medium">신용/체크카드</p>
        </div>
      </div>
    </div>
    <div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/U.JPG" alt="준비하세요" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">준비하세요!</p>
          <br>
          <p class="w3-medium">연금저축</p>
          <br>
          <p class="w3-medium">퇴직연금</p>
          <br>
          <p class="w3-medium">실손의료보험</p>
          <br>
          <p class="w3-medium">자동차보험</p>
        </div>
      </div>
    </div>
</div>
<div class="w3-panel w3-gray w3-opacity">
    <h2 class=""><strong>합리적인 금융상품의 선택!&nbsp;&nbsp;Smart Financial Life</strong></h2>
</div>
</div>
<!-- 하단부 링크 -->
	<br>
	<br>
  <div class="board_wrap">
    <!-- 공지사항 s-->
    <div class="notice_area">
      <strong>공지사항</strong>
      <a href="#" class="btn_more">더보기</a>
      <ul>
        <li>
          <a href="#">
            <span class="txt">시스템 정기점검 공지시스템 정기점검 공지시스템 정기점검 공지</span>
            <span class="date">2018.02.12</span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="txt">시스템 정기점검 공지</span>
            <span class="date">2018.02.12</span>
          </a>
        </li>
        
      </ul>
    </div>
    <!-- 공지사항 e-->

    <!-- 비교공시 서비스 이용시 유의점 s -->
    <div class="service_area">
      <div class="tit_area">
        <strong>인기 금융상품</strong>&nbsp;&nbsp;
      </div>
      <div class="tit2_area">
        <strong>재테크 뉴스정보</strong>
      </div>
      <ul>
        <li><a href="#">자주하는질문</a></li>
        <li><a href="#">금융교육센터</a></li>
        <li><a href="#">연금포털</a></li>
        <li><a href="#">금융용어사전</a></li>
        <li><a href="#">금융회사핵심경영통계</a></li>
        <li><a href="#">보험다모아</a></li>
      </ul>
    </div>
    
  </div>
 <br>
 <br>
<!-- 슬라이스 하단 -->
<div class="w3-content w3-display-container" id="z">
  <img class="mySlides" src="../view/image/1_logo.gif" style="width:150px">
  <img class="mySlides" src="../view/image/2_logo.gif" style="width:150px">
  <img class="mySlides" src="../view/image/3_logo.jpg" style="width:150px">
  <img class="mySlides" src="../view/image/4_logo.png" style="width:150px">

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>

<br>
<div>
<a href="#" class="w3-button w3-blue w3-padding-large w3-margin-bottom"><i class="fa fa-arrow-up"></i>To the top</a>
</div>
</center>
</div>


<br>
<!-- 하단 -->
<%@include file="/view/footer.jsp"%>
</body>
</html>
