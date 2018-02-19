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
#font{
	color:red;
}

</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row" id="up">
  <div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>전세자금대출</b></h2> 
  </div>
  <div class="w3-third w3-container w3-white w3-right-align">
    	<button onclick="document.getElementById('id01').style.display='block'" 
    	class="w3-button w3-light-gray"><b>용어설명</b></button>
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
<div class="w3-row w3-padding-16">

	<div class="w3-third w3-container w3-center-align">
표준 가입연령
 	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option" >
  		<option value="" disabled selected>30세</option>
  		<option value="1">40세</option>
		</select>
 	</div>
	</div>
	<div class="w3-third w3-container w3-center-align" >
월 납입액<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>100,000원</option>
  		<option value="1">200,000원</option>
  		<option value="2">300,000원</option>
		</select>
 	</div>
	</div>
		<div class="w3-third w3-container w3-center-align" >
납입기간<br/>
			<div>
    			<select class="w3-select w3-light-grey w3-border" name="option">
  				<option value="0" disabled selected>10년</option>
  				<option value="1">20년</option>
				</select>
			</div>
		</div>
</div>

<div class="w3-row w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">			
		<div class="w3-third w3-container w3-center-align" >
총 납입액<br/>
			<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>36,000,000원</option>
		</select>
 			</div>
		</div>
		
		<div class="w3-third w3-container w3-center-align" >
연금 개시연령<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>60세</option>
  		<option value="1">65세</option>
		</select>
 	</div>
	</div>
	<div class="w3-third w3-container w3-center-align" >
연금수령 기간<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>10년 확정</option>
  		<option value="1">20년 확정</option>
  		<option value="1">종신 남자 10년보증</option>
  		<option value="1">종신 남자 20년보증</option>
		</select>
 	</div>
	</div>
</div>
<br>
	<div class="w3-left-align w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">
연금저축종류&nbsp;&nbsp;&nbsp;&nbsp; 	
		<button class="w3-button w3-gray w3-hover-indigo">연금저축신탁</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">연금저축보험(생명)</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">연금저축보험(손해)</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">연금저축펀드</button>&nbsp;
	</div>
<div class="w3-padding-48">
<button class="w3-button w3-blue" style="font-size: 30px">금융상품 검색</button>&nbsp;
</div>
<div class="w3-padding-48 w3-left-align"style="height:958" id="notice">
		<div class="txt_notice-text-right"><span class="ft-color-admin"><div id="font">*&nbsp;본&nbsp;사이트에서는&nbsp;최신정보&nbsp;제공을&nbsp;위해&nbsp;노력하고&nbsp;있으나,&nbsp;금융회사의&nbsp;상품별&nbsp;이자율&nbsp;등&nbsp;거래조건이&nbsp;수시로&nbsp;변경되어&nbsp;지연공시될&nbsp;수&nbsp;있으므로&nbsp;거래전&nbsp;반드시&nbsp;해당&nbsp;금융회사에&nbsp;문의하시기&nbsp;바랍니다.</span></div>
		<br>*&nbsp;'판매후&nbsp;연평균수익률'은&nbsp;과거&nbsp;수익률로서&nbsp;향후&nbsp;수익률을&nbsp;보장하는&nbsp;것이&nbsp;아니며,&nbsp;연중&nbsp;판매&nbsp;개시된&nbsp;경우&nbsp;판매일&nbsp;이후&nbsp;평균수익률입니다.
		<br><br>*&nbsp;'예상&nbsp;월&nbsp;연금액'&nbsp;산정시&nbsp;적용되는&nbsp;수익률은&nbsp;향후&nbsp;수익률을&nbsp;확정할&nbsp;수&nbsp;없으므로&nbsp;일정한&nbsp;가정수익률(보험업감독업무시행세칙상&nbsp;평균공시이율)을&nbsp;모든&nbsp;상품에&nbsp;동일하게&nbsp;적용하되,&nbsp;해당상품의&nbsp;운용보수(수수료,&nbsp;사업비)&nbsp;등이&nbsp;차감된다는&nbsp;가정하에&nbsp;산정한&nbsp;예시금액임에&nbsp;유의하시기&nbsp;바랍니다.&nbsp;
		<br><br>*&nbsp;연금저축신탁,&nbsp;연금저축펀드의&nbsp;경우&nbsp;실적배당상품이므로&nbsp;향후&nbsp;수익률에&nbsp;따라&nbsp;예상&nbsp;월연금액이&nbsp;크게&nbsp;달라질&nbsp;수&nbsp;있으며,&nbsp;
		<br>&nbsp;&nbsp;&nbsp;<font color = "red">연금저축보험은&nbsp;사업비&nbsp;등&nbsp;수수료가&nbsp;판매초기에&nbsp;차감되므로&nbsp;판매후&nbsp;초기&nbsp;연평균수익률이&nbsp;(-)로&nbsp;보여지나,&nbsp;공시이율&nbsp;또는&nbsp;최저보증이율로&nbsp;운용되므로&nbsp;예상&nbsp;월연금액은&nbsp;(+)로&nbsp;나타날&nbsp;수&nbsp;있습니다.</font></div>
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
  		<option value="" selected>전체</option>
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