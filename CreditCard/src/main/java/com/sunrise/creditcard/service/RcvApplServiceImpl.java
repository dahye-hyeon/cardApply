package com.sunrise.creditcard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunrise.creditcard.dao.CommCodeDAO;
import com.sunrise.creditcard.dao.RcvApplDAO;
import com.sunrise.creditcard.vo.CommCodeDtlVO;
import com.sunrise.creditcard.vo.RcvApplVO;

@Service
public class RcvApplServiceImpl implements RcvApplService{

	@Autowired
	private RcvApplDAO rcvApplDao;
	@Autowired
	private CommCodeDAO commCodeDao;
	
	@Override
	/* 중복가입 불능 */
	public int updateDoubeRcv(RcvApplVO rcvpplVo) {
		return rcvApplDao.updateDoubeRcv(rcvpplVo);
	}
	
	@Override
	/* 입회신청 */
	public void rcvAppl(RcvApplVO rcvApplVo) {		
		int doubleRcv = commCodeDao.doubleRcv(rcvApplVo);

		if(doubleRcv >= 1) {
			rcvApplDao.updateDoubeRcv(rcvApplVo);
		}else if(doubleRcv == 0){
			rcvApplDao.rcvAppl(rcvApplVo);
		}
	}
	
	@Override
	/* 기간별 입회신청 조회 */
	public List<RcvApplVO> rcvInquiry(RcvApplVO rcvpplVo) {
		return rcvApplDao.rcvInquiry(rcvpplVo);
	}
	
	
	@Override
	/* 신청구분 가져오기 */
	public List<CommCodeDtlVO> getApplClas(){
		return rcvApplDao.getApplClas();
	}

	@Override
	/* 브랜드 가져오기 */
	public List<CommCodeDtlVO> getBrand() {
		return rcvApplDao.getBrand();
	}

	@Override
	/* 결제은행 가져오기 */
	public List<CommCodeDtlVO> getBank() {
		return rcvApplDao.getBank();
	}

	@Override
	/* 결제일자 가져오기 */
	public List<CommCodeDtlVO> getStlDate() {
		return rcvApplDao.getStlDate();
	}

	@Override
	/* 청구서 발송방법 가져오기 */
	public List<CommCodeDtlVO> getStmtMtd() {
		return rcvApplDao.getStmtMtd();
	}

	@Override
	/* 결제 방법 가져오기 */
	public List<CommCodeDtlVO> getStlMth() {
		return rcvApplDao.getStlMth();
	}
}
