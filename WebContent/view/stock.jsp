<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String url ="http://finance.naver.com/";
String url2 ="http://finance.naver.com/sise/sise_index.nhn?code=KOSPI";
String url3 ="http://finance.naver.com/sise/sise_index.nhn?code=KOSDAQ";
String url4 ="http://finance.naver.com/news/";
String line="";
String line2="";
String line3="";
String line4="";
try{
	
	Document doc;
	doc=Jsoup.connect(url).get();
	Elements media1=doc.select("div[class=wise_info]");
	Elements media2=doc.select("script");
	Elements media3=doc.select("link");
	for(Element src: media1){
		
		String templine=src.toString();
		line+=templine;
	}
	for(Element src: media2){
		
		String templine=src.toString();
		line+=templine;
	}
	for(Element src: media3){
	
	String templine=src.toString();
	line+=templine;
}

	
	Document doc2;
	doc2=Jsoup.connect(url2).get();
	Elements kospi1=doc2.select("div[class=box_top_sub]");
	Elements kospi5=doc2.select("script");
	Elements kospi6=doc2.select("link");
	for(Element src: kospi1){
		
		String templine=src.toString();
		line2+=templine;
	}
	for(Element src:kospi5){
		String templine=src.toString();
		line2+=templine;
	}
	for(Element src:kospi6){
		String templine=src.toString();
		line2+=templine;
	}
	Document doc3;
	doc3=Jsoup.connect(url3).get();
	Elements kosdaq1=doc3.select("div[class=box_top_sub]");
	Elements kosdaq5=doc3.select("script");
	Elements kosdaq6=doc3.select("link");
	for(Element src: kosdaq1){
		
		String templine=src.toString();
		line3+=templine;
	}
	for(Element src:kosdaq5){
		String templine=src.toString();
		line3+=templine;
	}
	for(Element src:kosdaq6){
		String templine=src.toString();
		line3+=templine;
	}
	Document doc4;
	doc4=Jsoup.connect(url4).get();
	Elements news1=doc4.select("div[class=box_top_submain]");
	Elements news2=doc4.select("script");
	Elements news3=doc4.select("link");
	for(Element src: news1){
		
		String templine=src.toString();
		line4+=templine;
	}
	for(Element src:news2){
		String templine=src.toString();
		line4+=templine;
	}
	for(Element src:news3){
		String templine=src.toString();
		line4+=templine;
	}
}catch(IOException e){
	e.printStackTrace();
}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
p{
	font-size:12px;
}
.box_top_submain{
		
	}
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
<br/>
<center>
	<div class="w3-container w3-margin-top w3-border">
	<div class="w3-row">
		<div class="w3-quarter">
			<h4 class=""><b>와이즈리포트 추천종목</b></h4>
			<p><b class="w3-opacity">와이즈리포트</b>에서 서비스하는 각 증권사들의 추천종목 컨텐츠입니다.</p>
			<br/>
			<%=line%>
    	</div>
    	<div class="w3-threequarter">
    	<div class="w3-row">
    	<div class="w3-half w3-left-align">
 		<h3><b>코스피</b></h3>
 			<%=line2%>
		</div>
		<div class="w3-half w3-left-align">
 		<h3><b>코스닥</b></h3>
 			<%=line3%>
 			
		</div>
		
 		</div>
 			<%=line4%>
 		</div>

<hr>
	</div>
	
</div>

<%@include file="/view/footer.jsp"%>
</body>
</html>