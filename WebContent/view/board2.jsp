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
    <h2><b>�����ϴ� ����(FAQ)</b></h2> 
  </div>
  </div>
</div>
<hr>
<center>
<div class="w3-border" style="width:1200px">
<div>
	<div class="w3-padding-16">
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">��ü</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">��/����</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">���ô㺸����</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">�����ڱݴ���</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">���νſ����</button>&nbsp;<br><br>
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">�Ǽ��ǷẸ��</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">�ڵ�������</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">��������</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">��������</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo" style="width:150px">�ݵ�</button>&nbsp;
	</div>		
</div>
</div>
<br>

<div class="w3-border" style="width:1200px">
	<br>
<div class="w3-left-align" style="border-bottom: 1px dashed #E6E6E6">
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
	<br>
	
 <div class="w3-padding-24 w3-left-align">
 <div class="w3-container w3-padding-24">
  <table class="w3-table w3-border">
    <tr class="w3-blue w3-border">
      <th>��ȣ</th>
      <th>�з�</th>
      <th>����</th>
      <th>�����</th>
      <th>��ȸ��</th>
    </tr>
    </div>
    <tr>
      <td>36</td>
      <td>�����ڱݴ���</td>
      <td>��ȯ��Ŀ� ���� ��ȯ�װ� ���ںδ�׿� ���̰� �߻��ϳ���?</td>
      <td>2017-10-17</td>
      <td>564</td>
    </tr>
    <tr>
      <td>35</td>
      <td>��/����</td>
      <td>���� ����� ������ ���� �� �ճ���?</td>
      <td>2017-10-17</td>
      <td>300</td>
    </tr>
    <tr>
<td>37</td>
      <td>���ô㺸����</td>
      <td>�����ݸ��� �����ݸ��� ��� ���еǳ���</td>
      <td>2017-10-17</td>
      <td>500</td>
    </tr>
  </table>
</div>
</div>
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
</div>
</center>

<%@include file="/view/footer.jsp"%>

</body>
</html>