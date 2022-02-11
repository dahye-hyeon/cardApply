package com.sunrise.creditcard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sunrise.creditcard.vo.CustVO;

@Repository
public class CustDAO {
	@Autowired
	private SqlSession sqlSession;
	
	/* 회원 존재 유무 */
	public int selectCust(CustVO custVo) {
		return sqlSession.selectOne("cust.selectCust", custVo);
	}
	
	/* 회원 등록 */
	public int insertCust(CustVO custVo) {
		return sqlSession.insert("cust.insertCust", custVo);
	}
	
	/* 회원 번호 가져오기 */
	public String custNum(CustVO custVo) {
		return sqlSession.selectOne("cust.custNum", custVo);
	}
}