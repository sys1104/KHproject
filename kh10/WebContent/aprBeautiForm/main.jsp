<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>����</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body onload="focusIt();">
<!-- before login -->
<%
	if(session.getAttribute("memId") == null) { 
%>
<script type="text/javascript">
	function focusIt() {
		document.inform.id.focus();
	}
	function checkIt() {
		inputForm = eval("document.inform");
		if(!inputForm.id.value){
			alert("���̵� �Է��ϼ���!");
			inputForm.id.focus();
			return false;
		}
		if(!inputForm.passwd.value){
			alert("��й�ȣ�� �Է��ϼ���!");
			inputForm.passwd.focus();
			return false;
		}
	}
</script>

<div id="loginWrap">
	<h1>Member Login</h1>
	<form action="loginPro.jsp" method="post" name="inform" onsubmit="return checkIt();">
		<fieldset>
			<legend>�α���</legend>
			<dl>
				<dt>Id</dt>
				<dd><input type="text" name="id" maxlength="10" /></dd>
				<dt>Password</dt>
				<dd><input type="password" name="passwd" maxlength="10" /></dd>
			</dl>
			<div class="btnArea">
				<input type="submit" name="Submit" value="Ok" />
				<input type="button" value="Join" onclick="javascript:window.location='inputForm.jsp'" />
				<input type="button" value="Find id" onclick="javascript:window.location='findId.jsp'" />
				<input type="button" value="Find password" onclick="javascript:window.location='findPw.jsp'" />
			</div>
		</fieldset>
	</form>
</div>

<%
	} else {
%>

<!-- after login -->
<div id="loginWrap">
	<h1>Welcome to my world!</h1>
	<div class="afterLogin">
		<p><strong><%= session.getAttribute("memId") %></strong>�� ȯ���մϴ�.</p>
		<form action="logout.jsp" method="post">
			<div class="btnArea">
				<input type="submit" name="Submit" value="Logout" />
				<input type="button" value="Modify" onclick="javascript:window.location='modifyForm.jsp'" />
			</div>
		</form>
	</div>
</div>

<% } %>
</body>
</html>