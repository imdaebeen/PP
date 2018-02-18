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
#font{
	color:red;
}

</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row" id="up">
  <div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>정기 예금</b></h2> 
  </div>
  <div class="w3-third w3-container w3-white w3-right-align">
    	<button onclick="document.getElementById('id01').style.display='block'" 
    	class="w3-button w3-white"><b>용어설명</b></button>
    	<div id="id01" class="w3-modal">
    	<div class="w3-modal-content">
    	<div class="w3-blue w3-center">
        <h3><b>용  어  설  명<b></b></h3>
        </div>
     	<div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <div class="w3-white">
        <p>※   이자율 <br />
		1년 기준 이자율(만기 6개월 상품인 경우 1년으로 환산된 이자율임에 유의)<br /><br />
		※   세후 이자율 <br />
		이자소득 원천징수세 15.4%(소득세 14%, 지방소득세 1.4%)를 차감한 금리<br /><br />
		※   만기시 실수령액 <br />
		"이자"는 세후 이자율로 계산한 이자이며, "실수령액"은 저축원금에 이자를 더한 금액<br /><br />
		※   이자계산방식 <br />
		"단리"는 원금에 대해서만 약정한 이자율을 적용하여 이자를 지급하는 방식<br />
		"월복리"는 매월 발생한 이자를 원금에 합산하고 합산한 금액을 새로운 원금으로 하여 그 다음 월의 이자를 계산하는 방식<br /><br /></p>
		</div>
      </div>
    </div>
  </div>
</div>
  </div>
</div>
<hr>
<center>
<div class="w3-border" style="width:1200px">
<div class="w3-row w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">

<div class="w3-third w3-container">
저축금액
  <input class="w3-input w3-border w3-light-gray w3-right-align" type="text" size="10" value="10,000,000">
</div>
<div class="w3-twothird w3-container w3-left-align" >
저축예정기간<br/>
  <button class="w3-button w3-gray w3-hover-indigo">6개월</button>&nbsp;
  <button class="w3-button w3-gray w3-hover-indigo">12개월</button>&nbsp;
  <button class="w3-button w3-gray w3-hover-indigo">24개월</button>&nbsp;
  <button class="w3-button w3-gray w3-hover-indigo">36개월</button>&nbsp;
</div>
</div>
<div class="w3-left-align w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">
금융권역&nbsp;&nbsp;&nbsp;&nbsp; 	
		<button class="w3-button w3-gray w3-hover-indigo">전체</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">은행</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">저축은행</button>&nbsp;
</div>
<div class="w3-left-align">
	<div class="w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">
	지역선택&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">전체</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">서울</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">부산</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">대구</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">인천</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">광주</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">대전</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">울산</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">세종</button>&nbsp;<br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">경기</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">강원</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">충북</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">충남</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">전북</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">전남</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">경북</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">경남</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">제주</button>&nbsp;
		<br>
	</div>		
</div>
<div class="w3-left-align w3-padding-16">
가입대상&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">제안없음</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">서민전용</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">일부제한</button>&nbsp;
</div>
<div class="w3-padding-48">
<button class="w3-button w3-blue">금융상품 검색</button>&nbsp;
</div>
<div class="w3-padding-48 w3-left-align"style="height:958" id="notice">
		<div class="txt_notice-text-right">
		<span class="ft-color-admin">
		<div id="font">*&nbsp;본&nbsp;사이트에서는&nbsp;최신정보&nbsp;제공을&nbsp;위해&nbsp;노력하고&nbsp;있으나,&nbsp;금융회사의&nbsp;상품별&nbsp;이자율&nbsp;등&nbsp;
		거래조건이&nbsp;수시로&nbsp;변경되어&nbsp;지연공시될&nbsp;수&nbsp;있으므로&nbsp;거래전&nbsp;반드시&nbsp;해당&nbsp;금융회사에&nbsp;문의하시기&nbsp;바랍니다.</span>
		</div><br><br>
		*&nbsp;세전&nbsp;이자율은&nbsp;우대조건을&nbsp;반영하지&nbsp;않은&nbsp;기본금리입니다.&nbsp;상세정보의&nbsp;우대조건에&nbsp;해당시&nbsp;보다&nbsp;높은&nbsp;이자율이&nbsp;적용될&nbsp;수&nbsp;있습니다.
		<br><br>*&nbsp;세후&nbsp;이자율은&nbsp;이자소득&nbsp;원천징수세&nbsp;15.4%(소득세&nbsp;14%,&nbsp;지방소득세&nbsp;1.4%)를&nbsp;차감한&nbsp;금리입니다.
		<br><br>*&nbsp;세후이자&nbsp;및&nbsp;세후&nbsp;실수령액은&nbsp;원단위&nbsp;절사,&nbsp;
		복리의&nbsp;경우&nbsp;월복리&nbsp;가정&nbsp;등을&nbsp;적용하여&nbsp;비교&nbsp;편의를&nbsp;위해&nbsp;예시한&nbsp;계산금액으로&nbsp;실제&nbsp;실수령액과&nbsp;차이가&nbsp;발생할&nbsp;
		수&nbsp;있으므로&nbsp;상품&nbsp;가입시&nbsp;해당&nbsp;금융회사에&nbsp;정확한&nbsp;금액을&nbsp;확인하시기&nbsp;바랍니다.&nbsp;
		(자유적립식&nbsp;적금상품은&nbsp;적금액이&nbsp;일정하지&nbsp;않으므로&nbsp;산출하지&nbsp;않습니다.) </div>
	</div>
<div class="w3-row">
  <div class="w3-third w3-container w3-left-align" >
    <h3><b>검색결과</b></h3> 
  	</div>
  </div>
<hr>
<div class="w3-left-align"style="border-bottom: 1px dashed #E6E6E6">
	<div class="w3-row w3-left-alin">
	<div class="w3-twothird w3-container">
	<div class="w3-container w3-quarter"style="width:120px">	
    <h6>결과내 검색</h6>
    </div>
	<div class="w3-container w3-quarter" style="width:120px">
    	<select class="w3-select w3-border" name="option" style="width:100px">
  		<option value="" disabled selected>전체</option>
  		<option value="1">금융상품명</option>
  		<option value="2">상품명</option>
  		<option value="3">상세정보</option>
		</select>
	</div>
	<div class="w3-container w3-quarter">	
		<span></span><input class="w3-input w3-border" type="text" placeholder="검색어를 입력하세요"></span>
	</div>
	<div class="w3-container w3-quarter">	
		<span><button class="w3-button w3-blue">검색하기</button></span>
	</div>	
		</div>
    </div>
  </div>
 <div class="w3-padding-24 w3-left-align">
	<h6>검색된 금융상품은 총 367건입니다.</h6>
 <div class="w3-container w3-padding-24">
  <table class="w3-table w3-border">
    <tr class="w3-blue w3-border">
      <th>비교선택</th>
      <th>금융회사</th>
      <th>상품명</th>
      <th>세전이자율</th>
      <th>세후이자율</th>
      <th>세후이자(예시)</th>
      <th>최고우대금리</th>
      <th>가입대상</th>
      <th>이자계산방식</th>
      <th>상세정보</th>
    </tr>
    </div>
    <tr>
      <td>Jill</td>
      <td>Smith</td>
      <td>50</td>
    </tr>
    <tr>
      <td>Eve</td>
      <td>Jackson</td>
      <td>94</td>
    </tr>
    <tr>
      <td>Adam</td>
      <td>Johnson</td>
      <td>67</td>
    </tr>
  </table>
</div>
<div class="w3-border" style="height:80px">
	<br>
	<div class="w3-row ">
	<div class="w3-quarter w3-container w3-gray w3-center">
	선택한<br>비교상품	
	</div>
	<div class="w3-threequarter w3-container w3-right-align">
	<button class="w3-button w3-blue">금융상품 검색</button>&nbsp;
	</div>
	</div>
</div>
</div>
<div class="w3-row w3-padding-64" style="height:200px">
  <div class="w3-third w3-container w3-indigo"	style="height:100px">
    <h5>나도 비과세를 적용받을 수 있나요?</h5>
  </div>
  <div class="w3-third w3-container w3-teal"	style="height:100px">
    <h5>단리와 복리는 무엇인가요?</h5> 
  </div>
  <div class="w3-third w3-container w3-indigo"	style="height:100px">
    <h5>예금과 적금의 차이는 무엇인가요?</h5>
  </div>
</div>
<div>
<a href="#" class="w3-button w3-blue w3-padding-large w3-margin-bottom"><i class="fa fa-arrow-up"></i>To the top</a>
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
</center>

<%@include file="/view/footer.jsp"%>

</body>
</html>