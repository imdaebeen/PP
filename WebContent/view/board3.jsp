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
    <h2><b>��ȸ�� �� ����</b></h2> 
</div>
</div>
<hr>
<center>
<div class="w3-padding-64" style="width:980px">
	<div class="w3-left-align">
	<strong>�ذ� ��ȸ �񱳰��� ���� �ȳ�</strong>
	</div>
	
 <table id="customers">
  <tr class="w3-blue">
    <th>��ȸ��</th>
    <th>����ȸ��</th>
    <th>������ǰ��</th>
    <th>URL</th>
  </tr>
  <tr>
    <td rowspan=7>���࿬��ȸ</td>
    <td rowspan=7>����</td>
    <td>���⿹��,�������ݵ�</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>��������</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>���������Ź</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>�������</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>�߼ұ������</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>���ñ������� ���� ����</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>��Ÿ����������(����,����,��ȯ������ ��)</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td rowspan=2>���������߾�ȸ</td>
    <td rowspan=2>��������</td>
    <td>���⿹��,�������ݵ�</td>
    <td>�ٷΰ���</td>
  </tr>
   <tr>
    <td>��������</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td >��������ȸ</td>
    <td >������ȸ��</td>
    <td>���强����,���༺����,�Ǽ��ǷẸ��,�������ຸ��,���׺���<br/></td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td rowspan=2>���ű�����ȸ</td>
    <td rowspan=2>�ſ�ī��ȸ��<br/>
    			  ��������ȸ��<br/>
    			 �Һα���ȸ��	
    </td>
    <td>�ſ�ī��</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>����.�Һα���</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>����������ȸ</td>
    <td>�ڻ���ȸ��</td>
    <td>�ݵ� ���ͷ���</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td rowspan=2>�����߾�ȸ</td>
    <td rowspan=2>���غ���ȸ��</td>
    <td>���� �ݸ�</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>����ݸ�</td>
    <td>�ٷΰ���</td>
  </tr>
  <tr>
    <td>�ѱ���α�����ȸ</td>
    <td>��α�����</td>
    <td>�ſ����ݸ�</td>
    <td>�ٷΰ���</td>
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