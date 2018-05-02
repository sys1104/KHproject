<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "soldesk.board.BoardDataBean" %>
<%@ page import = "soldesk.board.BoardDBBean" %>
<%@ page import = "soldesk.board.CommentDBBean" %>
<%@ page import = "soldesk.board.CommentDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="color.jsp" %>

<%
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
	
	List articleList = null;
	BoardDBBean dbPro = BoardDBBean.getInstance();
	
	if(search.equals("") || search == null) 
		count = dbPro.getArticleCount();
	else 
		count = dbPro.getArticleCount(searchn, search);
	
	CommentDBBean cdb = CommentDBBean.getInstance();
	
	if(count >0) {
		if(search.equals("") || search == null) 
			articleList = dbPro.getArticles(startRow, endRow);
		else
			articleList = dbPro.getArticles(startRow, endRow, searchn, search);
	}
		
	number = count-(currentPage-1)*pageSize; // 11 -(2-1) *3 = 8
%>

<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
<center><b>�۸��(��ü ��:<%=count %>)</b>
<table width="700">
<tr>
	<td align="right" bgcolor="<%=value_c %>">
	<a href="writeForm.jsp">�۾���</a>
	</td>
</table>
<%
	if(count ==0) {
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td align="center">
	�Խ��ǿ� ����� ���� �����ϴ�.
	</td>
</tr>	
</table>

<%} else { %>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
	<tr height="30" bgcolor="<%=value_c %>">
		<td align="center" width="50">��  ȣ</td>
		<td align="center" width="250">��    ��</td>
		<td align="center" width="100">�ۼ���</td>
		<td align="center" width="150">�ۼ���</td>
		<td align="center" width="50">��  ȸ</td>
		<td align="center" width="100">IP</td>
	</tr>
<%
	for(int i=0;i<articleList.size(); i++) {
		BoardDataBean article = (BoardDataBean)articleList.get(i);
		int com_count = cdb.getCommentCount(article.getNum());
%>	
	<tr height="30">
		<td align="center" width="50"><%=number-- %></td>
		<td align="left">
<%
	int wid=0;
	if(article.getRe_level()>0) {
		//�亯���̶��
		wid=5*(article.getRe_level());
%>
	<img src="images/level.gif" width="<%=wid %>" height="16">
	<img src="images/re.gif">
<%}else{ %>	
	<img src="images/level.gif" width="<%=wid %>" height="16">
<%} %>	
<% if(com_count >0) { %>
	<a href="content.jsp?num=<%=article.getNum() %>&pageNum=<%=currentPage %>">
			<%=article.getSubject() %> [<%=com_count %>]</a>
<%} else { %>
	<a href="content.jsp?num=<%=article.getNum() %>&pageNum=<%=currentPage %>">
			<%=article.getSubject() %></a>
<% } %>

	<% if(article.getReadcount() >=20) {%>
	<img src="images/hot.gif" border="0" height="16">
	<%} %></td>
		
		<td align="center" width="100"><a href="mailto:<%=article.getEmail() %>"><%=article.getWriter() %></a></td>
		<td align="center" width="150"><%= sdf.format(article.getReg_date()) %></td>
		<td align="center" width="50"><%=article.getReadcount() %></td>
		<td align="center" width="100"><%=article.getIp() %></td>

	<% } %>	
	</table>
<%} %>
<p>
<%
	if(count>0) {
		int pageCount = count/pageSize +(count % pageSize == 0? 0:1);
		
		int startPage = (int)(currentPage/5)*5+1;
		int pageBlock=5;
		int endPage= startPage + pageBlock-1;
		
		if(endPage > pageCount) endPage = pageCount;
		
		if(startPage >5) {
			if(search.equals("") || search==null) {%>

		<a href="list.jsp?pageNum=<%=startPage -5 %>">[����]</a>
<% } else {%>
		<a href	="list.jsp?pageNum=<%=startPage -5 %>&search=<%=search %>%searchn=<%=searchn %>">[����]</a>	
<%	}%>
<%} 
		for(int i=startPage ; i<=endPage ; i++) { 
			if(search.equals("") || search==null) {
%>
			<a href="list.jsp?pageNum=<%=i %>">[<%=i %>]</a>
	<% } else { %>			
			<a href="list.jsp?pageNum=<%=i %>&search=<%=search %>&searchn=<%=searchn %>">[<%=i %>]</a>
	<%} %>		
<%
}
		if(endPage <pageCount) {
			if(search.equals("") || search==null) {
			%>
		<a href = "list.jsp?pageNum=<%= startPage +5 %>">[����]</a>
	<%} else { %>
		<a href ="list.jsp?pageNum=<%=startPage +5 %>&search=<%=search %>&searchn=<%=searchn %>">[����]</a>
			<%
	}%>
	<%
		}
	}
%>
<p>
<form>
<select name="searchn">
<option value="0">�ۼ���</option>
<option value="1">����</option>
<option value="2">����</option> 
</select>

<input type="text" name="search" size="15" maxlength="50"/> 
<input type="submit" value="�˻�"/>
</form>
<br></br>
</body>
</html>