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
<!-- ��� -->
<%@include file="/view/header.jsp"%>
<!-- ���� -->	
<div id="content">
<center>
<div class="w3-container " style="padding:32px;" id="work">
	<div class="w3-row-padding" style="margin-top:15px;">
	<br>
  	<div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/pig.jpg" alt="���ڵǼ���" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">���ڵǼ���!</p>
          <br>
          <p class="w3-medium">����</p>
          <br>
          <p class="w3-medium">����</p>
          <br>
          <p class="w3-medium">�ֽ�</p>
          <br>
          <p class="w3-medium">�ݵ�</p>
          <br>
          <p class="w3-medium">����������ǰ</p>
      </div>
    </div>
    </div>
    <div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/H.JPG" alt="�ʿ��ϼ���" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">�ʿ��ϼ���?</p>
          <br>
          <p class="w3-medium">���ô㺸����</p>
          <br>
          <p class="w3-medium">�����ڱݴ���</p>
          <br>
          <p class="w3-medium">���νſ����</p>
          <br>
          <p class="w3-medium">�߱ݸ��ſ����</p>
          <br>
          <p class="w3-medium">���ñ����������</p>
          <br>
          <p class="w3-medium">�ſ�/üũī��</p>
        </div>
      </div>
    </div>
    <div class="w3-col l4 m4 w3-margin-bottom">
      <div class="w3-card" style="height:750px">
        <img src="../view/image/U.JPG" alt="�غ��ϼ���" style="width:100%">
        <div class="w3-container">
          <p class="w3-xxlarge">�غ��ϼ���!</p>
          <br>
          <p class="w3-medium">��������</p>
          <br>
          <p class="w3-medium">��������</p>
          <br>
          <p class="w3-medium">�Ǽ��ǷẸ��</p>
          <br>
          <p class="w3-medium">�ڵ�������</p>
        </div>
      </div>
    </div>
</div>
<div class="w3-panel w3-gray w3-opacity">
    <h2 class=""><strong>�ո����� ������ǰ�� ����!&nbsp;&nbsp;Smart Financial Life</strong></h2>
</div>
</div>
<!-- �ϴܺ� ��ũ -->
	<br>
	<br>
  <div class="board_wrap">
    <!-- �������� s-->
    <div class="notice_area">
      <strong>��������</strong>
      <a href="#" class="btn_more">������</a>
      <ul>
        <li>
          <a href="#">
            <span class="txt">�ý��� �������� �����ý��� �������� �����ý��� �������� ����</span>
            <span class="date">2018.02.12</span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="txt">�ý��� �������� ����</span>
            <span class="date">2018.02.12</span>
          </a>
        </li>
        
      </ul>
    </div>
    <!-- �������� e-->

    <!-- �񱳰��� ���� �̿�� ������ s -->
    <div class="service_area">
      <div class="tit_area">
        <strong>�α� ������ǰ</strong>&nbsp;&nbsp;
      </div>
      <div class="tit2_area">
        <strong>����ũ ��������</strong>
      </div>
      <ul>
        <li><a href="#">�����ϴ�����</a></li>
        <li><a href="#">������������</a></li>
        <li><a href="#">��������</a></li>
        <li><a href="#">����������</a></li>
        <li><a href="#">����ȸ���ٽɰ濵���</a></li>
        <li><a href="#">����ٸ��</a></li>
      </ul>
    </div>
    
  </div>
 <br>
 <br>
<!-- �����̽� �ϴ� -->
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
<!-- �ϴ� -->
<%@include file="/view/footer.jsp"%>
</body>
</html>
