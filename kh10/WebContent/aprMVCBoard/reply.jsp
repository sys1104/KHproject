<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "soldesk.MVCModelBoard.ReplyArticleService" %>
<%@ page import = "soldesk.MVCModelBoard.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="replyingRequest" class="soldesk.MVCModelBoard.ReplyingRequest"/>
<jsp:setProperty name="replyingRequest" property="*"/>

<%
	String viewPage = null;
	try {
	
		Article postedArticle = ReplyArticleService.getInstance().reply(replyingRequest);
		request.setAttribute("postedArticle", postedArticle);
		viewPage = "reply_success.jsp";
	} catch(Exception e) {
		viewPage = "reply_error.jsp";
		request.setAttribute("replyException", e);
	}

%>
<jsp:forward page="<%=viewPage %>"/>


<!-- 
������ ã�Ƴ� ���� �� �ڵ�� ���� �� Ȯ���� �� �ִ�.
System.out.println(request.getParameter("parentArticleId"));
System.out.println(replyingRequest.getParentArticleId()); 
-->
<!-- 
�������� �θ���̵� �����ϱ�
replyingRequest.setParentArticleId(Integer.parseInt(request.getParameter("parentArticleId")));

 -->