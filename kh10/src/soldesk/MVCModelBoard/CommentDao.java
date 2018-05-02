package soldesk.MVCModelBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ssol.jdbc.JdbcUtil;

public class CommentDao {
	//�̱��� �������� ��ü �ϳ��� ���� ��� ������
	private static CommentDao instance = new CommentDao();
	
	public static CommentDao getInstance() {
		return instance;
	}
	private CommentDao() {
		
	}
	
	
	//�ڸ�Ʈ ������ ����
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from article_comment_zzuggumi");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
	
	/*//����¡ �� �����͸� ������ �޼���(�� ���������� ��� �����ٱ?)
	public List<Article> select(Connection conn, int firstRow, int endRow) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from ( "
					+" select rownum rnum, article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from ( "
	
					+" select * from article_comment_zzuggumi m order by m.sequence_no desc "
					+" ) where rownum <= ? "
					+" ) where rnum >= ?");
						
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, firstRow);
			rs = pstmt.executeQuery();
			if(!rs.next()) {
				return Collections.emptyList();
			}
			List<Article> articleList = new ArrayList<Article>();
			do {
				Article article = makeArticleFromResultSet(rs, false);
				articleList.add(article);
			} while(rs.next());
			return articleList;
		
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}*/
	
	private Comment makeCommentFromResultSet(ResultSet rs, boolean readContent) throws SQLException {
		Comment comment = new Comment(); //article�� �ڽ����� ����. 9���� ������ ��´�
		comment.setContent_id(rs.getInt("content_num"));
		comment.setCommenter(rs.getString("commenter"));
		comment.setCommentt(rs.getString("commentt"));
		comment.setPassword(rs.getString("password"));
		comment.setPostingDate(rs.getDate("reg_date"));
		comment.setComment_id(rs.getInt("comment_num"));
		/*if(readContent) {
			comment.setCommentt(rs.getString("content"));
		}*/
		return comment;		
	}
	
	
	//��� ����
		public void insert(Connection conn, Comment comment) throws SQLException {
			PreparedStatement pstmt = null;
			Statement stmt = null;
			try {
				pstmt = conn.prepareStatement("insert into article_comment_zzuggumi values (?,?,?,?,?,?,?)");
			/*	pstmt = conn.prepareStatement("insert into article_comment_zzuggumi "
						+"(content_id, commenter, commentt, password, postingDate, ip, comment_id) "
						+"values (?,?,?,?,?,?,?)");*/
				pstmt.setInt(1, comment.getContent_id());
				pstmt.setString(2, comment.getCommenter());
				pstmt.setString(3, comment.getCommentt());
				pstmt.setString(4, comment.getPassword());
				pstmt.setTimestamp(5, new Timestamp(comment.getPostingDate().getTime()));
				pstmt.setString(6, comment.getIp());
				pstmt.setInt(7, comment.getComment_id());
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JdbcUtil.close(stmt);
				JdbcUtil.close(pstmt);
			}
		}

}
