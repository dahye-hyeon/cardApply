package com.sunrise.creditcard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sunrise.creditcard.vo.RcvApplVO;

@Repository
public class CardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	/* 카드 소지 여부 */
	public int selectCard(RcvApplVO rcvApplVo) {
		return sqlSession.selectOne("card.selectCard", rcvApplVo);
	}
	
	/* 카드 생성 */
	public int insertCard(RcvApplVO rcvApplVo) {
		return sqlSession.insert("card.insertCard", rcvApplVo);
	}
}
