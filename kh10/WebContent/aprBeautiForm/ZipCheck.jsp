<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="logon.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("euc-kr");

	String check = request.getParameter("check");
	//System.out.println(check + "****************");
	String area3 = request.getParameter("area3");
	LogonDBBean manager = LogonDBBean.getInstatnce();
	Vector zipcodeList = manager.zipcodeRead(area3);
	int totalList = zipcodeList.size();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>�����ȣ �˻�</title>
<link href="css/popup.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function dongCheck(){
		if(document.zipForm.area3.value == ""){
			alert("���̸��� �Է��ϼ���!");
			document.zipForm.area3.focus();
			return;
		}
		document.zipForm.submit();
	}
	function sendAddress(zipcode, area1, area2, area3, area4){
		var address = area1 + " " + area2 + " " + area3 + " " + area4;
		opener.document.userinput.zipcode.value = zipcode;
		opener.document.userinput.address.value = address;
		self.close();
	}
</script>
</head>
<body>
<div id="zipCheck">
	<h1>�����ȣ �˻�</h1>
	<form name="zipForm" method="post" action="ZipCheck.jsp">
		<p class="desc">���̸� �Է� : <input type="text" name="area3" /></p>
		<div>
			<input type="button" value="Search" class="btn" onclick="dongCheck();" />
			<input type="hidden" name="check" value="n" />
		</div>
	</form>

<%
	if(check.equals("n")){
%>
<%		
		if(zipcodeList.isEmpty()){ 
%>
			<p class="desc">�˻��� ����� �����ϴ�.</p>
<%
		} else{
%>	
		<div class="spot">*�˻� ��, �Ʒ��� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</div>
		<ul>
		<%
			for(int i = 0; i < totalList; i++){
				ZipcodeBean zipBean	= (ZipcodeBean)zipcodeList.elementAt(i);
				String tempZipcode	= zipBean.getZipcode();
				String tempArea1	= zipBean.getArea1();
				String tempArea2	= zipBean.getArea2();
				String tempArea3	= zipBean.getArea3();
				String tempArea4	= zipBean.getArea4();
		%>
			<li>
				<a href="javascript:sendAddress('<%= tempZipcode %>', '<%= tempArea1 %>', '<%= tempArea2 %>', '<%= tempArea3 %>', '<%= tempArea4 %>')">
					<%= tempZipcode %>&nbsp;<%= tempArea1 %>&nbsp;<%= tempArea2 %>&nbsp;<%= tempArea3 %>&nbsp;<%= tempArea4 %>
				</a>
			</li>
		<%
			}
		}
	%>
		</ul>
<%	
	}
%>
</div>
</body>
</html>