package com.sunrise.creditcard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sunrise.creditcard.vo.CommCodeDtlVO;
import com.sunrise.creditcard.vo.RcvApplVO;

@Repository
public class RcvApplDAO {

	@Autowired
	private SqlSession sqlSession;
	
	/* 입회신청 */
	public int rcvAppl(RcvApplVO rcvpplVo) {
		return sqlSession.insert("rcvAppl.insertRcvAppl", rcvpplVo);
	}
	
	/* 중복가입 불능 */
	public int updateDoubeRcv(RcvApplVO rcvpplVo) {
		return sqlSession.update("rcvAppl.updateDoubeRcv", rcvpplVo);
	}
	
	/* 기간별 입회신청 조회 */
	public List<RcvApplVO> rcvInquiry(RcvApplVO rcvpplVo) {
		return sqlSession.selectList("rcvAppl.rcvInquiry", rcvpplVo);
	}
	
	/* 신청구분 가져오기 */
	public List<CommCodeDtlVO> getApplClas(){
		return sqlSession.selectList("rcvAppl.getApplClas");
	}
	
	/* 브랜드 가져오기 */
	public List<CommCodeDtlVO> getBrand(){
		return sqlSession.selectList("rcvAppl.getBrand");
	}
	
	/* 결제은행 가져오기 */
	public List<CommCodeDtlVO> getBank(){
		return sqlSession.selectList("rcvAppl.getBank");
	}
	
	/* 결제일자 가져오기 */
	public List<CommCodeDtlVO> getStlDate(){
		return sqlSession.selectList("rcvAppl.getStlDate");
	}
	
	/* 청구서 발송방법 가져오기 */
	public List<CommCodeDtlVO> getStmtMtd(){
		return sqlSession.selectList("rcvAppl.getStmtMtd");
	}
	
	/* 결제 방법 가져오기 */
	public List<CommCodeDtlVO> getStlMth(){
		return sqlSession.selectList("rcvAppl.getStlMth");
	}

}
