<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="logon.LogonDBBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>���̵� ã��</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function checkIt() {
		var userinput = eval("document.userinput");
		if(!userinput.name.value){
			alert("�̸��� �Է��ϼ���!");
			return false;
		}
		if(!userinput.email.value){
			alert("�̸����� �Է��ϼ���!");
			return false;
		}
	}
</script>
</head>
<body>
<div id="memberWrap">
	<div class="innerDiv">
		<h1>Find ID</h1>
		<!-- <p class="desc">���Խ� �Է��� �̸��� �̸����� �Է��� �ּ���.</p> -->
		<form action="findPro.jsp" name="userinput" method="post" onsubmit="return checkIt()">
			<fieldset>
			<legend>���̵� ã��</legend>
				<dl>
					<dt>Name</dt>
					<dd><input type="text" name="name" maxlength="10" /></dd>
					<dt>E-mail</dt>
					<dd><input type="text" name="email" maxlength="50" /></dd>
				</dl>
				<div class="btnArea">
					<input type="submit" name="Submit" value="Ok" />
					<input type="button" value="Cancel"  onclick="javascript:window.location='main.jsp'" class="btn" />
				</div>
			</fieldset>
		</form>
	</div>
</div>
</body>
</html>