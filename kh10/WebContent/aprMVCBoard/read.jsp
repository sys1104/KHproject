<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "soldesk.MVCModelBoard.ReadArticleService" %>
<%@ page import = "soldesk.MVCModelBoard.ArticleNotFoundException" %>
<%@ page import = "soldesk.MVCModelBoard.Article" %>

<%
	int articleId = Integer.parseInt(request.getParameter("articleId"));
	String viewPage = null;
	try {
		Article article = ReadArticleService.getInstance().readArticle(articleId);
		request.setAttribute("article", article);
		viewPage = "read_view.jsp"; /* �� �Ǹ� read_view�� ������ */
	} catch(ArticleNotFoundException ex) {
		viewPage = "article_not_found.jsp"; /*���ܰ� �߻��ϸ� ��������  ������*/
	}
%>

<jsp:forward page = "<%= viewPage %>"/>