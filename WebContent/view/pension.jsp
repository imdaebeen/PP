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
    <h2><b>�����ڱݴ���</b></h2> 
  </div>
  <div class="w3-third w3-container w3-white w3-right-align">
    	<button onclick="document.getElementById('id01').style.display='block'" 
    	class="w3-button w3-light-gray"><b>����</b></button>
    	<div id="id01" class="w3-modal">
    	<div class="w3-modal-content">
    	<div class="w3-blue w3-center">
        <h3><b>��  ��  ��  ��<b></b></h3>
        </div>
     	<div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <div class="w3-white">
        <p>��   ������ <br />
		1�� ���� ������(���� 6���� ��ǰ�� ��� 1������ ȯ��� �������ӿ� ����)<br /><br />
		��   ���� ������ <br />
		���ڼҵ� ��õ¡���� 15.4%(�ҵ漼 14%, ����ҵ漼 1.4%)�� ������ �ݸ�<br /><br />
		��   ����� �Ǽ��ɾ� <br />
		"����"�� ���� �������� ����� �����̸�, "�Ǽ��ɾ�"�� ������ݿ� ���ڸ� ���� �ݾ�<br /><br />
		��   ���ڰ���� <br />
		"�ܸ�"�� ���ݿ� ���ؼ��� ������ �������� �����Ͽ� ���ڸ� �����ϴ� ���<br />
		"������"�� �ſ� �߻��� ���ڸ� ���ݿ� �ջ��ϰ� �ջ��� �ݾ��� ���ο� �������� �Ͽ� �� ���� ���� ���ڸ� ����ϴ� ���<br /><br /></p>
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
ǥ�� ���Կ���
 	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option" >
  		<option value="" disabled selected>30��</option>
  		<option value="1">40��</option>
		</select>
 	</div>
	</div>
	<div class="w3-third w3-container w3-center-align" >
�� ���Ծ�<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>100,000��</option>
  		<option value="1">200,000��</option>
  		<option value="2">300,000��</option>
		</select>
 	</div>
	</div>
		<div class="w3-third w3-container w3-center-align" >
���ԱⰣ<br/>
			<div>
    			<select class="w3-select w3-light-grey w3-border" name="option">
  				<option value="0" disabled selected>10��</option>
  				<option value="1">20��</option>
				</select>
			</div>
		</div>
</div>

<div class="w3-row w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">			
		<div class="w3-third w3-container w3-center-align" >
�� ���Ծ�<br/>
			<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>36,000,000��</option>
		</select>
 			</div>
		</div>
		
		<div class="w3-third w3-container w3-center-align" >
���� ���ÿ���<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>60��</option>
  		<option value="1">65��</option>
		</select>
 	</div>
	</div>
	<div class="w3-third w3-container w3-center-align" >
���ݼ��� �Ⱓ<br/>
	<div>
    	<select class="w3-select w3-light-grey w3-border" name="option">
  		<option value="0" disabled selected>10�� Ȯ��</option>
  		<option value="1">20�� Ȯ��</option>
  		<option value="1">���� ���� 10�⺸��</option>
  		<option value="1">���� ���� 20�⺸��</option>
		</select>
 	</div>
	</div>
</div>
<br>
	<div class="w3-left-align w3-padding-16" style="border-bottom: 1px dashed #E6E6E6">
������������&nbsp;&nbsp;&nbsp;&nbsp; 	
		<button class="w3-button w3-gray w3-hover-indigo">���������Ź</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">�������ຸ��(����)</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">�������ຸ��(����)</button>&nbsp;
		<button class="w3-button w3-gray w3-hover-indigo">���������ݵ�</button>&nbsp;
	</div>
<div class="w3-padding-48">
<button class="w3-button w3-blue" style="font-size: 30px">������ǰ �˻�</button>&nbsp;
</div>
<div class="w3-padding-48 w3-left-align"style="height:958" id="notice">
		<div class="txt_notice-text-right"><span class="ft-color-admin"><div id="font">*&nbsp;��&nbsp;����Ʈ������&nbsp;�ֽ�����&nbsp;������&nbsp;����&nbsp;����ϰ�&nbsp;������,&nbsp;����ȸ����&nbsp;��ǰ��&nbsp;������&nbsp;��&nbsp;�ŷ�������&nbsp;���÷�&nbsp;����Ǿ�&nbsp;�������õ�&nbsp;��&nbsp;�����Ƿ�&nbsp;�ŷ���&nbsp;�ݵ��&nbsp;�ش�&nbsp;����ȸ�翡&nbsp;�����Ͻñ�&nbsp;�ٶ��ϴ�.</span></div>
		<br>*&nbsp;'�Ǹ���&nbsp;����ռ��ͷ�'��&nbsp;����&nbsp;���ͷ��μ�&nbsp;����&nbsp;���ͷ���&nbsp;�����ϴ�&nbsp;����&nbsp;�ƴϸ�,&nbsp;����&nbsp;�Ǹ�&nbsp;���õ�&nbsp;���&nbsp;�Ǹ���&nbsp;����&nbsp;��ռ��ͷ��Դϴ�.
		<br><br>*&nbsp;'����&nbsp;��&nbsp;���ݾ�'&nbsp;������&nbsp;����Ǵ�&nbsp;���ͷ���&nbsp;����&nbsp;���ͷ���&nbsp;Ȯ����&nbsp;��&nbsp;�����Ƿ�&nbsp;������&nbsp;�������ͷ�(����������������༼Ģ��&nbsp;��հ�������)��&nbsp;���&nbsp;��ǰ��&nbsp;�����ϰ�&nbsp;�����ϵ�,&nbsp;�ش��ǰ��&nbsp;��뺸��(������,&nbsp;�����)&nbsp;����&nbsp;�����ȴٴ�&nbsp;�����Ͽ�&nbsp;������&nbsp;���ñݾ��ӿ�&nbsp;�����Ͻñ�&nbsp;�ٶ��ϴ�.&nbsp;
		<br><br>*&nbsp;���������Ź,&nbsp;���������ݵ���&nbsp;���&nbsp;��������ǰ�̹Ƿ�&nbsp;����&nbsp;���ͷ���&nbsp;����&nbsp;����&nbsp;�����ݾ���&nbsp;ũ��&nbsp;�޶���&nbsp;��&nbsp;������,&nbsp;
		<br>&nbsp;&nbsp;&nbsp;<font color = "red">�������ຸ����&nbsp;�����&nbsp;��&nbsp;�����ᰡ&nbsp;�Ǹ��ʱ⿡&nbsp;�����ǹǷ�&nbsp;�Ǹ���&nbsp;�ʱ�&nbsp;����ռ��ͷ���&nbsp;(-)��&nbsp;��������,&nbsp;��������&nbsp;�Ǵ�&nbsp;��������������&nbsp;���ǹǷ�&nbsp;����&nbsp;�����ݾ���&nbsp;(+)��&nbsp;��Ÿ��&nbsp;��&nbsp;�ֽ��ϴ�.</font></div>
	</div>
<div class="w3-row">
  <div class="w3-third w3-container w3-left-align" >
    <h3><b>�˻����</b></h3> 
  	</div>
  </div>
<hr>
<div class="w3-left-align"style="border-bottom: 1px dashed #E6E6E6">
	<div class="w3-row w3-left-alin">
	<div class="w3-twothird w3-container">
	<div class="w3-container w3-quarter"style="width:120px">	
    <h6>����� �˻�</h6>
    </div>
	<div class="w3-container w3-quarter" style="width:120px">
    	<select class="w3-select w3-border" name="option" style="width:100px">
  		<option value="" selected>��ü</option>
  		<option value="1">������ǰ��</option>
  		<option value="2">��ǰ��</option>
  		<option value="3">������</option>
		</select>
	</div>
	<div class="w3-container w3-quarter">	
		<span></span><input class="w3-input w3-border" type="text" placeholder="�˻�� �Է��ϼ���"></span>
	</div>
	<div class="w3-container w3-quarter">	
		<span><button class="w3-button w3-blue">�˻��ϱ�</button></span>
	</div>	
		</div>
    </div>
  </div>
 <div class="w3-padding-24 w3-left-align">
	<h6>�˻��� ������ǰ�� �� 367���Դϴ�.</h6>
 <div class="w3-container w3-padding-24">
  <table class="w3-table w3-border">
    <tr class="w3-blue w3-border">
      <th>�񱳼���</th>
      <th>����ȸ��</th>
      <th>��ǰ��</th>
      <th>����������</th>
      <th>����������</th>
      <th>��������(����)</th>
      <th>�ְ���ݸ�</th>
      <th>���Դ��</th>
      <th>���ڰ����</th>
      <th>������</th>
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
	������<br>�񱳻�ǰ	
	</div>
	<div class="w3-threequarter w3-container w3-right-align">
	<button class="w3-button w3-blue">������ǰ �˻�</button>&nbsp;
	</div>
	</div>
</div>
</div>
<div class="w3-row w3-padding-64" style="height:200px">
  <div class="w3-third w3-container w3-indigo"	style="height:100px">
    <h5>���� ������� ������� �� �ֳ���?</h5>
  </div>
  <div class="w3-third w3-container w3-teal"	style="height:100px">
    <h5>�ܸ��� ������ �����ΰ���?</h5> 
  </div>
  <div class="w3-third w3-container w3-indigo"	style="height:100px">
    <h5>���ݰ� ������ ���̴� �����ΰ���?</h5>
  </div>
</div>
<div>
<a href="#" class="w3-button w3-blue w3-padding-large w3-margin-bottom"><i class="fa fa-arrow-up"></i>To the top</a>
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
</center>

<%@include file="/view/footer.jsp"%>

</body>
</html>