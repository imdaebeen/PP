<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div > p{
	text-align: left;
}
#notice{
	background-color:#B2EBF4;
	border:1px;
}
ul > li{
	display:inline;
}
li{
	list-style:none;
}
#op{
background-color:red;
}

</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row" id="up">
  <div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>자주하는 질문(FAQ)</b></h2> 
  </div>
  </div>
</div>
<hr>
<center>
<div class="w3-border" style="width:1200px">
<div>
	<div class="w3-padding-16">
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">전체</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">예/적금</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">주택담보대출</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">전세자금대출</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">개인신용대출</button>&nbsp;<br><br>
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">실손의료보험</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">자동차보험</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">연금저축</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">퇴직연금</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">펀드</button>&nbsp;
	</div>		
</div>
</div>
<br>

<div class="w3-border" style="width:1200px">
	<br>
<div class="w3-left-align" style="border-bottom: 1px dashed #E6E6E6">
    <div class="w3-row">
    <div class="w3-half w3-container">
    <h6>총 3건(1/1 page)</h6>
    </div>
    <div class="w3-half w3-container w3-right-align">
    <div class="w3-row">
    	<div class="w3-quarter w3-container">
    	<select class="w3-select w3-border" name="option" style="width:100px">
  		<option value="" selected>제목</option>
  		<option value="1">내용</option>
  		<option value="2">제목+내용</option>
		</select>
		</div>
		<div class="w3-half w3-container">
		<input class="w3-input w3-border" type="text" placeholder="검색어를 입력하세요">
		</div>
		<div class="w3-quarter w3-container">
		<span><button class="w3-button w3-blue">검색하기</button></span>
		</div>
		</div>
    </div>
 	</div>
	</div>
	<br>
	
 <div class="w3-padding-24 w3-left-align">
 <div class="w3-container w3-padding-24">
  <table class="w3-table w3-border">
    <tr class="w3-blue w3-border">
      <th>번호</th>
      <th>분류</th>
      <th>제목</th>
      <th>등록일</th>
      <th>조회수</th>
    </tr>
    </div>
    <tr>
      <td>36</td>
      <td>전세자금대출</td>
      <td>상환방식에 따라 상환액과 이자부담액에 차이가 발생하나요?</td>
      <td>2017-10-17</td>
      <td>564</td>
    </tr>
    <tr>
      <td>35</td>
      <td>예/적금</td>
      <td>나도 비과세 적용을 받을 수 잇나요?</td>
      <td>2017-10-17</td>
      <td>300</td>
    </tr>
    <tr>
<td>37</td>
      <td>주택담보대출</td>
      <td>고정금리와 변동금리는 어떻게 구분되나요</td>
      <td>2017-10-17</td>
      <td>500</td>
    </tr>
  </table>
</div>
</div>
<div class="w3-padding-32">
	<div class="w3-border" style="background-color:#B2CCFF">
		<ul>
			<li><h6>현재 페이지의 내용과 사용 편의성에 대해 만족하십니까?</h6></li>
			<li><label for="answer1"><input type="radio" name="answer" id="answer1" value="5" class="radioType"/> 매우 만족</label></li>
			<li><label for="answer2"><input type="radio" name="answer" id="answer2" value="4" class="radioType"/> 만족</label></li>
			<li><label for="answer3"><input type="radio" name="answer" id="answer3" value="3" class="radioType"/> 보통</label></li>
			<li><label for="answer4"><input type="radio" name="answer" id="answer4" value="2" class="radioType"/> 불만족</label></li>
			<li><label for="answer5"><input type="radio" name="answer" id="answer5" value="1" class="radioType"/> 매우 불만족</label></li>
			<li><input type="button" id="btnPoll" class="float-R" value="참여하기" /></li>
		</ul>
</div>
</div>		
</div>
</div>
</center>

<%@include file="/view/footer.jsp"%>

</body>
</html>