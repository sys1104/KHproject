<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="logon.LogonDBBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>ID �ߺ�Ȯ��</title>
<link href="css/popup.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="idCheck">
	<h1>ID �ߺ�Ȯ��</h1>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	LogonDBBean manager = LogonDBBean.getInstatnce();
	int check = manager.confirmId(id);
%>

<%
	if(check == 1){
%>
<form action="confirmId.jsp" method="post" name="checkForm">
	<p class="desc"><strong><%= id %></strong>��(��) �̹� ������� ���̵��Դϴ�.<br />�ٸ� ���̵� �����ϼ���.</p>
	<div>
		<input type="text" name="id" maxlength="12" class="inputText" />
		<input type="submit" value="Check" class="btn" />
	</div>
</form>
<%
	}else {
%>
	<p class="desc">�Է��Ͻ� <strong><%= id %></strong>��(��) ����� �� �ִ� ���̵��Դϴ�.</p>
	<div><input type="button" value="Close" onclick="setid();" class="btn" /></div>
<%
	}
%>
	<!-- <div id="footer">
		<span><a href="#" onclick="self.close() return false;">Close x</a></span>
	</div> -->
</div>
<script type="text/javascript">
	function setid(){
		opener.document.userinput.id.value="<%= id %>";
		self.close();
	}
</script>
</body>
</html>
