<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page isErrorPage="true" %>
<html>
<head><title>���� �߻�</title>
<script>
function showDetail() {
	d= document.getElementById('detail');
	d.style.display='block';
}
</script>
</head>
<body>
<h3 id="header"><%= exception.getClass().getName() %></h3>
<div id="main" >
	<%= exception.getMessage() %>
	<input type="button" onClick="showDetail()" value="�󼼺���">
	<div id="detail" style="display:none"><% exception.printStackTrace(new java.io.PrintWriter(out)); %>
	</div>
</div>

<%-- ��û ó�� �������� ���ܰ� �߻��Ͽ����ϴ�.<br>
���� �ð� ���� ������ �ذ��ϵ��� �ϰڽ��ϴ�.
<p>
���� Ÿ��: <%= exception.getClass().getName() %> <br>
���� �޼���: <b><%= exception.getMessage() %></b> --%>
</body>
</html>