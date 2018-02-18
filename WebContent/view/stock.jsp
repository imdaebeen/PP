<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row">
  <div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>주식</b></h2> 
  </div>
</div>
<hr>
<center>
<div class="w3-border" style="width:980px">
	<div class="w3-row w3-padding-64" style="height:300px">
  <div class="w3-half w3-container w3-green" style="height:250px">
    <h2>코스피</h2> 
  </div>
  <div class="w3-half w3-container w3-blue" style="height:250px">
    <h2>코스닥</h2> 
  </div>
</div>
<hr>
	<div class="w3-padding-64 w3-left-align">
	<table class="w3-table w3-bordered" style="aling:center">
	<tr>
      <th colspan="8">추천종목</th>
    </tr>
    <tr>
      <th>종목명</th>
      <th>전일비</th>
      <th>거래량</th>
      <th>시가</th>
      <th>고가</th>
      <th>저가</th>
      <th>PER</th>
      <th>ROE</th>
    </tr>
    <tr>
      <th>NAVER</th>
      <th>6000</th>
      <th>73,831</th>
      <th>812,000</th>
      <th>819,000</th>
      <th>808,000</th>
      <th>35.68</th>
      <th>26.20</th>    
    </tr>
    <tr>
      <th>sist</th>
      <th>6000</th>
      <th>73,831</th>
      <th>812,000</th>
      <th>819,000</th>
      <th>808,000</th>
      <th>35.68</th>
      <th>26.20</th>
    </tr>
    <tr>
      <th>daebeen.co</th>
      <th>6000</th>
      <th>73,831</th>
      <th>812,000</th>
      <th>819,000</th>
      <th>808,000</th>
      <th>35.68</th>
      <th>26.20</th>
    </tr>
  </table>
	</div>
	<div class="w3-padding-64 w3-border">
	주요뉴스 
	<hr>
	</div>
</div>
<%@include file="/view/footer.jsp"%>
</body>
</html>