<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import ="java.util.*,soldesk.logon.*" %>

<%
	request.setCharacterEncoding("euc-kr");

	String check = request.getParameter("check");
	String area3 = request.getParameter("area3");
	LogonDBBean manager = LogonDBBean.getInstance();
	Vector zipcodeList = manager.zipcodeRead(area3);
	int totalList = zipcodeList.size();
%>

<html>
<head>
<title>�����ȣ�˻�</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript" src="script.js"></script>
<script>
	function dongCheck() {
		if(document.zipForm.area3.value == "") {
			alert("���̸��� �Է��ϼ���");
			document.zipForm.area3.focus();
			return;			
		}
		document.zipForm.submit();
	}
	function sendAddress(zipcode, area1, area2, area3, area4) {
		var address=area1+ " "+area2 + " "+area3 + " " + area4;
		opener.document.userinput.zipcode.value=zipcode;
		opener.document.userinput.address.value=address;
		self.close();
	}
</script>
</head>

<body bgcolor="#FFFFCC">
<center> 
<b>�����ȣ ã��</b>
<table>
	<form name="zipForm" method="post" action="ZipCheck.jsp">
		<tr>
			<td><br>
			���̸� �Է� : <input name="area3" type="text">
			<input type="button" value="�˻�" onclick="dongCheck();">
			</td>
		</tr>
		<input type="hidden" name="check" value="n">		
	</form>
<%
if(check.equals("n")) {
%>
<%
	if(zipcodeList.isEmpty()) {
%>
	<tr><td align="center"><br>�˻��� ����� �����ϴ�.</td></tr>
<%}
	else {
%>
<tr><td align="center"><br>
	�ذ˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td></tr>
<%
for(int i=0;i<totalList;i++) {
	ZipcodeBean zipBean = (ZipcodeBean)zipcodeList.elementAt(i);
	String tempZipcode = zipBean.getZipcode();
	String tempArea1 = zipBean.getArea1();
	String tempArea2 = zipBean.getArea2();
	String tempArea3 = zipBean.getArea3();
	String tempArea4 = zipBean.getArea4();
%>
<tr><td>
	<a href="javascript:sendAddress('<%=tempZipcode%>','<%=tempArea2%>','<%=tempArea3%>','<%=tempArea4%>')">
	<%=tempZipcode%>&nbsp; <%=tempArea1%> &nbsp; <%=tempArea2%> &nbsp;<%=tempArea3%> &nbsp; <%=tempArea4%>
	</a><br>
<%
	}
}
%>
<%} %>
</td></tr>
<tr><td align="center"><br><a href="javascript:this.close();">�ݱ�</a><tr></td>
</table>
</center>
</body>
</html>











