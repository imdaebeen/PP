<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
function logout() {
	 location.href = "../membership/logout.jsp";
}
</script>
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
</style>
</head>
<body>
<header style="min-width:1600px">
  <div class="" id="myNavbar">
  <div class="w3-row">
  	<div class="w3-third w3-container w3-right-align">
    <a href="/PersonalProject/view/Main.jsp" class="w3-button w3-wide">금융상품 한눈에</a>
    </div>
    <div class="w3-container w3-twothird w3-right-align">
      <a href="#about" class="w3-button"><img src="../view/image/magnify.png"></i>검색</a>
<%
	if(session.getAttribute("MEMBERID") == null){
%>
      <a href="/PersonalProject/membership/login.jsp" class="w3-bar-item w3-button"><img src="../view/image/account.png"></i> 로그인</a>
<% }else{ %>
	  <a href = javascript:logout() class="w3-bar-item w3-button"><img src="../view/image/account.png"> <%=session.getAttribute("MEMBERID")%> 로그아웃</a>
	  <%
	  	if(session.getAttribute("MEMBERID").equals("admin")){
	  %>  		
	  <a href="../view/adminpage.jsp" class="w3-bar-item w3-button"><img src="../view/image/account-settings-variant.png"> 관리자페이지</a>
	  <%	
	  	}else{
	  %>
	  <a href="#" class="w3-bar-item w3-button"><img src="../view/image/currency-krw.png"></i> 마이페이지</a>
	  <% } %>
	 
<%	} %>	  	      
      <a href="/PersonalProject/membership/mJoinForm.jsp" class="w3-bar-item w3-button"><img src="../view/image/account-plus.png"></i> 회원가입</a>
    </div>
    </div>
  </div>
 <div class="w3-container w3-center w3-blue"> 
 <div class="w3-bar">
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-blue w3-padding-large">저축</button>
    <div class="w3-dropdown-content w3-card-4 w3-large">
      <a href="/PersonalProject/view/deposit.jsp" class="w3-bar-item w3-button">정기예금</a>
      <a href="/PersonalProject/view/Installmentsavings.jsp" class="w3-bar-item w3-button">적금</a>
    </div>
   </div> 
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">주식</button>
    <div class="w3-dropdown-content w3-card-4">
      <a href="/PersonalProject/view/stock.jsp" class="w3-bar-item w3-button w3-large">주식</a>
    </div>
   </div> 
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">펀드</button>
    <div class="w3-dropdown-content w3-card-4">
      <a href="http://fundamoa.kofia.or.kr/" class="w3-bar-item w3-button w3-large">펀드</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">대출</button>
    <div class="w3-dropdown-content w3-card-4 w3-large">
      <a href="/PersonalProject/view/loan1.jsp" class="w3-bar-item w3-button">주택담보대출</a>
      <a href="/PersonalProject/view/loan2.jsp" class="w3-bar-item w3-button">전세자금대출</a>
      <a href="/PersonalProject/view/loan3.jsp" class="w3-bar-item w3-button">개인신용대출</a>
      <a href="/PersonalProject/view/loan4.jsp" class="w3-bar-item w3-button">중금리 신용대출</a>
      <a href="http://www.kfb.or.kr/info/khfc_interest_loan.html?S=FAH" class="w3-bar-item w3-button">주택금융공사 대출</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">연금</button>
    <div class="w3-dropdown-content w3-card-4 w3-large">
      <a href="/PersonalProject/view/pension.jsp" class="w3-bar-item w3-button">연금저축</a>
      <a href="http://pension.fss.or.kr/fss/psn/pubannounce/fss_announcement.jsp" class="w3-bar-item w3-button">퇴직연금</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">보험</button>
    <div class="w3-dropdown-content w3-card-4 w3-large">
      <a href="http://www.e-insmarket.or.kr/mins/minsInsList.knia?prdtSmlClsCd=G001" class="w3-bar-item w3-button">실손의료보험</a>
      <a href="http://www.e-insmarket.or.kr/aimt/Ains.knia" class="w3-bar-item w3-button">자동차보험</a>
    </div>
  </div>
  <div class="w3-dropdown-hover">
    <button class="w3-button w3-large w3-padding w3-padding-large">알림마당</button>
    <div class="w3-dropdown-content w3-card-4 w3-large">
      <a href="/PersonalProject/view/board1.jsp" class="w3-bar-item w3-button">공지사항</a>
      <a href="/PersonalProject/view/board2.jsp" class="w3-bar-item w3-button">자주하는질문</a>
       <a href="/PersonalProject/view/board3.jsp" class="w3-bar-item w3-button">협회별비교공시</a>
    </div>
  </div>
 </div>
</div>

</header>
</body>
</html>
