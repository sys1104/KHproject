<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import ="soldesk.logon.LogonDBBean" %>
<%@ include file="color.jsp"%>



<head>
</head>
<%
	int comment_num=0, ref=1, re_step=0, re_level=0;
	try {
		if(request.getParameter("comment_num") != null) {
			comment_num = Integer.parseInt(request.getParameter("comment_num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}
%>
<body>

<form method="post" action = "rereplyPro.jsp">

<input type="hidden" name="comment_num" value="<%=comment_num %>">
<input type="hidden" name="ref" value="<%=ref %>">
<input type="hidden" name="re_step" value="<%=re_step %>">
<input type="hidden" name="re_level" value="<%=re_level %>">

<table>
	
	<tr>
		<td>
			<input type="text" name="commenter" size="10" maxlength="12" placeholder="�̸�">
			<input type="password" name="passwd" size="10" maxlength="12" placeholder="��й�ȣ">
		</td>
	</tr>
	<tr>
		<td>
			<textarea name=commentt rows="6" cols="40"></textarea>
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="��۾���">
		</td>
	</tr>


</table>
<%
	}catch(Exception e) {}
%>
</form>

</body>
</html>








<%-- 
<!-- ----------------------��� ó���Ǵ� �ڵ�----------------------------- -->

<%
	if(count ==0) {
} else { %>
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



<!-- ------------------------�ڸ�Ʈ�κ� ui �ҽ��ڵ�   ---------------------------- -->


<%if(count>0){ %>
				<p>
				<table width=500 border=0 cellspacing=0 cellpadding=0 bgcolor=<%=bodyback_c %> align=center>
					<tr>
						<td>�ڸ�Ʈ ��: <%=comments.size() %>
					</tr>
					<%for(int i=0;i<comments.size();i++){
							CommentDataBean dbc=(CommentDataBean)comments.get(i);
					%>
						<tr>
							<td align=left size=250 bgcolor=<%=value_c %>>
							&nbsp;<b><%=dbc.getCommenter() %>&nbsp;��</b> (<%=sdf.format(dbc.getReg_date())%>)
							</td>
							
							<td align=right size=250 bgcolor=<%=value_c %>> ����IP:<%=dbc.getIp() %>
							&nbsp;<a href="delCommentForm.jsp?ctn=<%=dbc.getContent_num()%>&cmn=<%=dbc.getComment_num() %>&p_num=<%=pageNum %>" >[����]</a>&nbsp;
							</td>
						
 						</tr>	
						<tr>
							<td colspan=2><%=dbc.getCommentt() %><td>
					<%} %>
						</tr>
						
				</table>
				<table width=500 border=0 cellspacing=0 cellpadding=0 bgcolor=<%=bodyback_c %> align=center>
				<tr>
				<center>
						����¡!!! --%>