package com.sunrise.creditcard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sunrise.creditcard.vo.RcvApplVO;

@Repository
public class CommCodeDAO {
	@Autowired
	private SqlSession sqlSession;
	
	/* 당일 신청 내역 존재 */
	public int doubleRcv(RcvApplVO rcvpplVo) {
		return sqlSession.selectOne("commCode.doubleRcv", rcvpplVo);
	}
}
