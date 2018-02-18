<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}
#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    color: white;
}
ul > li{
	display:inline;
}
li{
	list-style:none;
}
</style>
</head>
<body>
<%@include file="/view/header.jsp"%>
<div class="w3-row">
<div class="w3-third w3-container w3-white w3-right-align">
    <h2><b>협회별 비교 공시</b></h2> 
</div>
</div>
<hr>
<center>
<div class="w3-padding-64" style="width:980px">
	<div class="w3-left-align">
	<strong>※각 협회 비교공시 서비스 안내</strong>
	</div>
	
 <table id="customers">
  <tr class="w3-blue">
    <th>협회명</th>
    <th>금융회사</th>
    <th>금융상품등</th>
    <th>URL</th>
  </tr>
  <tr>
    <td rowspan=7>은행연합회</td>
    <td rowspan=7>은행</td>
    <td>정기예금,정기적금등</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>퇴직연금</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>연금저축신탁</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>가계대출</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>중소기업대출</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>주택금융공사 관련 대출</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>기타각종수수료(예금,대출,외환수수료 등)</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td rowspan=2>저축은행중앙회</td>
    <td rowspan=2>저축은행</td>
    <td>정기예금,정기적금등</td>
    <td>바로가기</td>
  </tr>
   <tr>
    <td>가계대출등</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td >생명보험협회</td>
    <td >생명보험회사</td>
    <td>보장성보험,저축성보험,실손의료보험,연금저축보험,변액보험<br/></td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td rowspan=2>여신금융협회</td>
    <td rowspan=2>신용카드회사<br/>
    			  리스금융회사<br/>
    			 할부금융회사	
    </td>
    <td>신용카드</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>리스.할부금융</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>금융투자협회</td>
    <td>자산운용회사</td>
    <td>펀드 수익률등</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td rowspan=2>신협중앙회</td>
    <td rowspan=2>손해보험회사</td>
    <td>예금 금리</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>대출금리</td>
    <td>바로가기</td>
  </tr>
  <tr>
    <td>한국대부금융협회</td>
    <td>대부금융사</td>
    <td>신용대출금리</td>
    <td>바로가기</td>
  </tr>
</table>
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