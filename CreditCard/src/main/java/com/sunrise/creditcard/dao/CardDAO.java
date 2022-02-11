package com.sunrise.creditcard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sunrise.creditcard.vo.CardVO;

@Repository
public class CardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	/* 카드 소지 여부 */
	public int selectCard(CardVO cardVo) {
		return sqlSession.selectOne("card.selectCard", cardVo);
	}
	
	/* 카드 생성 */
	public int insertCard(CardVO cardVo) {
		System.out.println("dao에서영어이름:"+cardVo.getENG_NM());
		return sqlSession.insert("card.insertCard", cardVo);
	}
}
