<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ include file="color.jsp" %>

<%
	Cookie[] cookie = request.getCookies();
	String id = "";
	String passwd="";
	if(cookie != null) {
		for(int i=0;i<cookie.length;i++) {
			if(cookie[i].getName().trim().equals("id")) {
				System.out.println(cookie[i].getValue());
				id= cookie[i].getValue();
			}
			if(cookie[i].getName().trim().equals("passwd")) {
				System.out.println(cookie[i].getValue());
				passwd= cookie[i].getValue();
			}
		}
	}
%>


<html>
<head><title>�����Դϴ�.</title>
<link href = "style.css" rel ="stylesheet" type="text/css">

<%
	try {
		if(session.getAttribute("memId")==null) { 
%>
<script language="javascript" >
<!--
function focusIt() {
	document.inform.id.focus();	
}
function checkIt() {
	inputForm = eval("document.inform");
	if(!inputForm.id.value) {
		alert("���̵� �Է��ϼ���.") ;
		inputForm.id.focus();
		return false;
	}
	if(!inputForm.passwd.value) {
		alert("��й�ȣ�� �Է��ϼ���.");
		inputForm.passwd.focus();
		return false;
	}
}0
//-->


//���̵� ã�⸦ �����ϴ� �Լ�
function openFindId(iserinput) {
	//���̵� �Է��ߴ��� �˻�
	if(userinput.id.value == "") {
		alert("���̵� �Է��ϼ���");
		return;
	}
	//url�� ������Է� id�� �����մϴ�.
	url = "confirmId.jsp?id=" + userinput.id.value;
	
	//���ο� �����츦 ���ϴ�
	open(url,"confirm","toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
}
</script>
</head>
<body onLoad="focusIt();" bgcolor="<%=bodyback_c%>">
<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
	<tr>
		<td width="300" bgcolor="<%=bodyback_c%>" height="20">
		&nbsp;
		</td>
		
		<form name="inform" method="post" action="loginPro.jsp" onSubmit="return checkIt();">
		<td bgcolor="<%=title_c %>" width="100" align="right">���̵�</td>
		<td width="100" bgcolor="<%=value_c%>">
			<input type="text" name="id" size="15" maxlength="10" value="<%=id%>" ></td>
		</tr>
		
		
		<tr>
			<td rowspan="2" bgcolor="<%=bodyback_c %>" width="300">�����Դϴ�.</td>
			<td bgcolor="<%=title_c %>" width="100" align="right">�н�����</td>
			<td width="100" bgcolor="<%=value_c %>">
				<input type="password" name="passwd" size="15" maxlength="10" value="<%=passwd%>"></td>
				
		</tr>
		
		
		<tr>
			<td colspan="3" bgcolor="<%=title_c %>" align="center">
				<input type="submit" name="Submit" value="�α���">
				<input type="button" value="ȸ������" onclick="javascript:window.location='inputForm.jsp'">
				<input type="checkbox" name="id_rem">���̵�����
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="���̵�ã��" onclick="javascript:window.location='findID.jsp'">
			</td>njm                   
			<td>	
				<input type="button" value="�н�����ã��" onclick="javascript:window.location='findPasswd.jsp'"> 
			</td>
		</tr>
	</form>	
</table>
<% } else { %>
<table width="500" cellpadding="0" cellspacing="0" align="center" border="1">
	<tr>
		<td width="300" bgcolor="<%=bodyback_c%>" height="20">
			<a href="list.jsp">�Խ���</a>
		</td>
		
		<td rowspan="3" bgcolor="<%=value_c%>" align="center">
		<%=session.getAttribute("memId") %>����<br>�湮�Ͽ����ϴ�
		<form method="post" action="logout.jsp">
		<input type="submit" value="�α׾ƿ�">
		<input type="button" value="ȸ����������" onclick="javascript:window.location='modify.jsp'">
		
		</form>
		</td>
	</tr>
	<tr>
		<td rowspan="2" bgcolor="<%=bodyback_c %>" width="300">�����Դϴ�</td>
	</tr>
</table>
<br>
<%}
} catch(NullPointerException e) {}
%>

</body>
</html>











