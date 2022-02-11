package com.sunrise.creditcard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunrise.creditcard.dao.CardDAO;
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
	@Autowired
	private CardDAO cardDao;
	
	@Override
	/* 중복가입 불능 */
	public int updateDoubeRcv(RcvApplVO rcvpplVo) {
		return rcvApplDao.updateDoubleRcv(rcvpplVo);
	}
	
	@Override
	/* 입회신청 */
	public void rcvAppl(RcvApplVO rcvApplVo) {		
		//입회 신청 중복 여부
		int doubleRcv = commCodeDao.doubleRcv(rcvApplVo);
		//카드 
		int doubleCard = cardDao.selectCard(rcvApplVo);
		
		//신청구분
		String applClas = commCodeDao.getApplClas(rcvApplVo);
		
		if(doubleRcv >= 1) {// 불능01
			rcvApplVo.setIMPSB_CD("01");
			rcvApplDao.updateDoubleRcv(rcvApplVo);
		}else if(doubleCard >= 1) { //불능04
			rcvApplVo.setIMPSB_CD("04");
			rcvApplDao.updateDoubleRcv(rcvApplVo);
		}else if(doubleCard == 0) { //불능05
			rcvApplVo.setIMPSB_CD("05");
			rcvApplDao.updateDoubleRcv(rcvApplVo);
		}else {
			rcvApplDao.rcvAppl(rcvApplVo);
			if("11".equals(applClas)) { //최초신규 일 때
				System.out.println("ddd");
			}else if("12".equals(applClas)) { //추가신규 일 때
				cardDao.insertCard(rcvApplVo);
			}else if("21".equals(applClas)) { //재발급
				//아직 코드 미작성
			}
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
