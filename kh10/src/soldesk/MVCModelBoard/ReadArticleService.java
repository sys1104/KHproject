package soldesk.MVCModelBoard;

import java.sql.Connection;
import java.sql.SQLException;

import ssol.jdbc.ConnectionProvider;
import ssol.jdbc.JdbcUtil;

public class ReadArticleService {
	private static ReadArticleService instance = new ReadArticleService();
	public static ReadArticleService getInstance() {
		return instance;
	}
	
	private ReadArticleService() {
		
	}
	
	public Article readArticle(int articleId) throws ArticleNotFoundException {
		return selectArticle(articleId, true);
	}
	
	
	//��ȸ�� ������ ���� �������� ������ �����ϴ� �޼���
	private Article selectArticle(int articleId, boolean increaseCount) throws ArticleNotFoundException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ArticleDao articleDao = ArticleDao.getInstance();
			Article article = articleDao.selectById(conn, articleId);
			if(article == null) {
				throw new ArticleNotFoundException("�Խñ��� �������� �ʽ��ϴ� :" +articleId);
			}
			if(increaseCount) { //��ȸ������ ������ ���̸� �����͵� �������� ��ȸ�������� �Ѵ�.
				articleDao.increaseReadCount(conn, articleId);
				article.setReadCount(article.getReadCount() +1);
			}
			return article;
		} catch(SQLException e) {
			throw new RuntimeException("DB ���� �߻� :"+e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	public Article getArticle(int articleId) throws ArticleNotFoundException {
		return selectArticle(articleId, false); //���������� ������ ���� ���� ��ȸ�� ������ ���� ����
	}
}
