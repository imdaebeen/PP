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
    <h2><b>��������</b></h2> 
</div>
</div>
<hr>
<center>
<div class="w3-padding-64" style="width:980px">

	<div class="w3-left-align"style="border-bottom: 1px dashed #E6E6E6">
    <div class="w3-row">
    <div class="w3-half w3-container">
    <h6>�� 3��(1/1 page)</h6>
    </div>
    <div class="w3-half w3-container w3-right-align">
    <div class="w3-row">
    	<div class="w3-quarter w3-container">
    	<select class="w3-select w3-border" name="option" style="width:100px">
  		<option value="" selected>����</option>
  		<option value="1">����</option>
  		<option value="2">����+����</option>
		</select>
		</div>
		<div class="w3-half w3-container">
		<input class="w3-input w3-border" type="text" placeholder="�˻�� �Է��ϼ���">
		</div>
		<div class="w3-quarter w3-container">
		<span><button class="w3-button w3-blue">�˻��ϱ�</button></span>
		</div>
		</div>
    </div>
 	</div>
	</div>
 <table id="customers">
  <tr class="w3-blue">
    <th>��ȣ</th>
    <th>����</th>
    <th>�����</th>
    <th>��ȸ��</th>
  </tr>
  <tr>
    <td>15</td>
    <td>�ý��� �������� ����(2.1(��) 19:00 ~ 22:00)</td>
    <td>2018.02.01</td>
    <td>7496</td>
  </tr>
  <tr>
    <td>14</td>
    <td>�߱ݸ� �ſ���� �񱳰��� �ż� �ȳ�</td>
    <td>2018.02.01</td>
    <td>5000</td>
  </tr>
	</table>
<div class="w3-padding-32">
	<div class="w3-border" style="background-color:#B2CCFF">
		<ul>
			<li><h6>���� �������� ����� ��� ���Ǽ��� ���� �����Ͻʴϱ�?</h6></li>
			<li><label for="answer1"><input type="radio" name="answer" id="answer1" value="5" class="radioType"/> �ſ� ����</label></li>
			<li><label for="answer2"><input type="radio" name="answer" id="answer2" value="4" class="radioType"/> ����</label></li>
			<li><label for="answer3"><input type="radio" name="answer" id="answer3" value="3" class="radioType"/> ����</label></li>
			<li><label for="answer4"><input type="radio" name="answer" id="answer4" value="2" class="radioType"/> �Ҹ���</label></li>
			<li><label for="answer5"><input type="radio" name="answer" id="answer5" value="1" class="radioType"/> �ſ� �Ҹ���</label></li>
			<li><input type="button" id="btnPoll" class="float-R" value="�����ϱ�" /></li>
		</ul>
	</div>
</div>
</div>

</center>
<%@include file="/view/footer.jsp"%>

</body>
</html>