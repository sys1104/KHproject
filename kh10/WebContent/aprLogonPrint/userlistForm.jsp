<%@page import="soldesk.logon.LogonDBBean"%>
<%@page import="soldesk.logon.LogonDataBean"%>
<%@page import = "java.util.List" %>

<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ include file="color.jsp" %>
 
<%!
	int pageSize=3;
	SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<%
	String pageNum = request.getParameter("pageNum");
	String search = request.getParameter("search");
	
	int searchn = 0;

	if(pageNum == null) {
		pageNum="1";
	}
	
	if(search == null) search="";
	else searchn = Integer.parseInt(request.getParameter("searchn"));
	
	int currentPage = Integer.parseInt(pageNum);
	System.out.println(currentPage);
	int startRow = (currentPage *3)-2;
	int endRow = currentPage * pageSize;
	int count=0;
	int number=0;
	
	List memberList = null;
	LogonDBBean dbPro = LogonDBBean.getInstance();
	
	if(search.equals("") || search == null) 
		count = dbPro.getMemberCount();
	
	if(count>0) memberList = dbPro.getMembers(startRow, endRow);
	
		
	number = count-(currentPage-1)*pageSize; // 11 -(2-1) *3 = 8
%>


<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="<%=bodyback_c%>">
<center><b>ȸ�� ���(��ü ȸ�� ��:<%=count %>)</b>
<table width="700">
<tr>
	<td align="right" bgcolor="<%=value_c %>">
	<a href="writeForm.jsp">�۾���</a>
	</td>
</tr>
</table>
 <table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
	<tr height="30" bgcolor="<%=value_c %>">
		<!-- <td align="center" width="40">��ȣ</td> -->
		<td align="center" width="60">���̵�</td>
		<td align="center" width="80">��й�ȣ</td>
		<td align="center" width="80">�̸�</td>
		<td align="center" width="170">�ֹι�ȣ</td>
		<td align="center" width="120">�̸���</td>
		<td align="center" width="80">�����ȣ</td>
		<td align="center" width="220">�ּ�</td>
		<td align="center" width="100">������</td>
		<td align="center" width="80">����/����</td>	
	</tr>
	
<%
	 System.out.println("dfs"+memberList.size()); 
	for(int i=0;i<memberList.size(); i++) {
		LogonDataBean member = (LogonDataBean)memberList.get(i);
%>	
	<tr height="30">
		<%-- <td align="center" width="40"><%=number-- %></td> --%>
		
		<td align="center" width="60"><%=member.getId() %></td>
		<td align="center" width="80"><%=member.getPasswd() %></td>
		<td align="center" width="80"><%=member.getName() %></td>
		<td align="center" width="170"><%=member.getJumin1()%>-<%=member.getJumin2() %></td> 
		<td align="center" width="120"><%=member.getEmail() %></td>
		<td align="center" width="80"><%=member.getZipcode() %></td>
		<td align="center" width="220"><%=member.getAddress() %></td>
		<td align="center" width="100"><%=member.getReg_date() %></td>
		<td align="center" width="80"><a href="writeForm.jsp">����</a>/<a href="writeForm.jsp">����</a></td>
	
	</tr>	 
<%
	}
%>	 

	
	
</table>

</body>
</html>
 
 <%-- <%
	for(int i=0;i<member.size(); i++) {
		LogonDataBean member = (LogonDataBean)member.get(i);
%>	
	<tr height="30">
		<td align="center" width="40"><%=number-- %></td>
		
		<td align="center" width="80"><%=article.getId() %></td>
		<td align="center" width="80"><%=article.getPasswd() %></td>
		<td align="center" width="80"><%=article.getName() %></td>
		<td align="center" width="150"><%=article.getJumin1()%>-<%=article.getJumin2() %></td>
		<td align="center" width="100"><%=article.getEmail() %></td>
		<td align="center" width="100"><%=article.getZipcode() %></td>
		<td align="center" width="100"><%=article.getAddress() %></td>
		<td align="center" width="100"><%=article.getReg_date() %></td>
		<td align="center" width="100">����/����<%= %></td>
<%
	}
%>	 --%>


<!-- 
�����ϱ�
http://all-record.tistory.com/123 -->