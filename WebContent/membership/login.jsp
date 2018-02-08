<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<header class="w3-container w3-teal">
  <h1>Login Example</h1>
</header>

<div class="w3-container w3-half w3-margin-top">

<form class="w3-container w3-card-4">

<p>
<input class="w3-input" type="text" style="width:90%" required>
<label>Name</label></p>
<p>
<input class="w3-input" type="password" style="width:90%" required>
<label>Password</label></p>

<p>
<input class="w3-radio" type="radio" name="gender" value="male" checked>
<label>Male</label></p>

<p>
<input class="w3-radio" type="radio" name="gender" value="female">
<label>Female</label></p>

<p>
<input class="w3-radio" type="radio" name="gender" value="" disabled>
<label>Don't know (Disabled)</label></p>

<p>
<input id="milk" class="w3-check" type="checkbox" checked="checked">
<label>Stay logged in</label></p>

<p>
<button class="w3-button w3-section w3-teal w3-ripple"> Log in </button></p>

</form>

</div>
</body>
</html>