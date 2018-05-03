package soldesk.MVCModelBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ssol.jdbc.JdbcUtil;
import ssol.jdbc.ConnectionProvider;

public class IdGenerator {
	
	private static IdGenerator instance = new IdGenerator();
	
	public static IdGenerator getInstance() {
		return instance;
	}
	
	private IdGenerator () {
		
	}
	
	public int generateNextId(String sequenceName) throws IdGenerationFailedException {
		Connection conn = null;
		PreparedStatement pstmtSelect = null;
		ResultSet rs = null;
		PreparedStatement pstmtUpdate = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			pstmtSelect = conn.prepareStatement("select next_value from id_sequence_zzuggumi " + 
												"where sequence_name = ? for update");
			pstmtSelect.setString(1, sequenceName);
			rs = pstmtSelect.executeQuery();
			rs.next();
			int id = rs.getInt(1);
			id++;
			
			pstmtUpdate = conn.prepareStatement("update id_sequence_zzuggumi set next_value =? " +
												"where sequence_name =?");
			pstmtUpdate.setInt(1, id);
			pstmtUpdate.setString(2, sequenceName);
			pstmtUpdate.executeUpdate();
			
			conn.commit();
			
			return id;				
		} catch(SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new IdGenerationFailedException(ex);
		} finally {
			if(conn != null) {
				try {
					conn.setAutoCommit(true);
				} catch (SQLException e) {
					
				}
				JdbcUtil.close(conn);
			} 
		}	
	}
}
