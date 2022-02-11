package com.sunrise.creditcard.service;

import com.sunrise.creditcard.vo.RcvApplVO;

public interface CommonCodeService {
	public void doubleRcv(RcvApplVO rcvpplVo);
	
	/* 신청 구분 가져오기 */
	public String getApplClas(RcvApplVO rcvpplVo);
}
