<%@page import="jmembership.MemberDataBean"%>
<%@page import="jmembership.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
		String boardid = request.getParameter("boarid");
		if(boardid==null) boardid ="1";
%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum==""){
			pageNum = "1";
		}
	
	try{
			MemberDBBean dbPro = MemberDBBean.getInstance();
			MemberDataBean article = dbPro.getArticles(num,boardid);	
%>		 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<form method="post" name="updateform"action="<%=request.getContextPath()%>/membership/updatePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"/>
<input type="hidden" name="num" value="<%=num %>"/>
<input type="hidden" name="pageNum" value="<%=pageNum %>"/>
<b>�۳��� ����</b>
<div class="w3-row">
	<div class="w3-quarter w3-container w3-green">
		�̴ϰ����
	</div>
	<div class="w3-threequarter">
	<table class="w3-table w3-bordered w3-margin-left">
		<tr>
			<td class="w3-blue">���̵�</td>
			<td><input type="text" name="memberid" value="<%=article.getMemberid()%>"></td>
		</tr>
		<tr >
			<td class="w3-blue">��й�ȣ</td>
			<td><input type="password" maxlength="12" name="passwd"> </td>
		</tr>
		<tr>
			<td class="w3-blue">�̸�</td>
			<td><input type="text" name="name" value="<%=article.getName()%>"></td>
		</tr>
		<tr>
			<td class="w3-blue">�̸���</td>
			<td><input type="text" name="email" value="<%=article.getEmail()%>"></td>
		</tr>
		<tr>
			<td class="w3-blue">��ȭ��ȣ</td>
			<td><input type="text" name="phone" value="<%=article.getPhone()%>"></td>
		</tr>
	</table>
			<input type="submit" value="ȸ������" >
			<input type="button" value="ȸ������" onclick="document.location.href='deletePro.jsp?num=<%=num%>&passwd=<%=article.getPasswd()%>'">
  			<input type="reset" value="�ٽ��ۼ�">
 			<input type="button" value="��Ϻ���" onclick="document.location.href='mList.jsp?pageNum=<%=pageNum%>'">
			
			<%
			}catch(Exception e){
			}
			%>			
	</div>
</div>
</form>
</body>
</html>