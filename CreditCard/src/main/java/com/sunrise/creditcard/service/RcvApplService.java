package com.sunrise.creditcard.service;

import java.util.List;

import com.sunrise.creditcard.vo.CommCodeDtlVO;
import com.sunrise.creditcard.vo.RcvApplVO;

public interface RcvApplService {
	/* 입회신청 */
	public void rcvAppl(RcvApplVO rvcApplVo);
	
	/* 신청구분 가져오기 */
	public List<CommCodeDtlVO> getApplClas();
	
	/* 중복가입 불능 */
	public int updateDoubeRcv(RcvApplVO rcvpplVo);
	
	/* 기간별 입회신청 조회 */
	public List<RcvApplVO> rcvInquiry(RcvApplVO rcvpplVo);
	
	/* 브랜드 가져오기 */
	public List<CommCodeDtlVO> getBrand();
	
	/* 결제은행 가져오기 */
	public List<CommCodeDtlVO> getBank();
	
	/* 결제일자 가져오기 */
	public List<CommCodeDtlVO> getStlDate();
	
	/* 청구서 발송방법 가져오기 */
	public List<CommCodeDtlVO> getStmtMtd();
	
	/* 결제 방법 가져오기 */
	public List<CommCodeDtlVO> getStlMth();
}
