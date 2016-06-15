package model.card;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class CardcommentDaoImpl implements CardcommentDao{

	
	 private SqlSession sqlSession;

	 public void setSqlSession(SqlSession sqlSession) {
	      this.sqlSession = sqlSession;
	   }
	   
	@Override
	public void writeCardComment(CardcommentVO ccvo) throws SQLException {
		sqlSession.insert("cardSql.writeCardComment", ccvo);
	}

	@Override
	public void modifyCardComment(CardcommentVO ccvo) throws SQLException {
		sqlSession.update("cardSql.modifyCardComment", ccvo);
	}

	@Override
	public void deleteCardComment(int cardcommentNo) throws SQLException {
		sqlSession.delete("cardSql.deleteCardComment", cardcommentNo);
	}

	@Override
	public List<CardVO> getAllCardComments() throws SQLException {
		return sqlSession.selectList("cardSql.getAllCardComments");
	}

	@Override
	public boolean passwordCheck(String password) throws SQLException {
		return sqlSession.selectOne("cardSql.passwordCheck", password);
	}

}
