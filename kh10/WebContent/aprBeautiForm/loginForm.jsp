<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>�α���</title>
<link href="/SSOLDISK/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body onload="focusIt();">
<!-- before login -->
<%
	if(session.getAttribute("memId") == null) {
%>
<script type="text/javascript">
	function focusIt() {
		document.myform.id.focus();
	}
	function checkIt() {
		/* inputForm = eval("document.inform");
		if(!inputForm.id.value){
			alert("���̵� �Է��ϼ���!");
			inputForm.id.focus();
			return false;
		}
		if(!inputForm.passwd.value){
			alert("��й�ȣ�� �Է��ϼ���!");
			inputForm.passwd.focus();
			return false;
		} */
		
		if(!document.myform.id.value){
			alert("���̵� �Է��ϼ���!");
			document.myform.id.focus();
			return false;
		}
		if(!document.myform.passwd.value){
			alert("��й�ȣ�� �Է��ϼ���!");
			document.myform.passwd.focus();
			return false;
		}
	}
</script>

<div id="loginWrap">
	<h1>Member Login</h1>
	<form action="loginPro.jsp" method="post" name="myform" onsubmit="return checkIt();">
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
				<input type="reset" value="Reset" />
				<input type="button" value="Join" onclick="javascript:window.location='inputForm.jsp'" />
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
		<form action="logut.jsp" method="post">
			<div class="btnArea">
				<input type="submit" name="Submit" value="Logout" />
				<input type="button" value="Modify" onclick="javascript:window.location='modify.jsp'" />
			</div>
		</form>
	</div>
</div>

<% } %>
</body>
</html>