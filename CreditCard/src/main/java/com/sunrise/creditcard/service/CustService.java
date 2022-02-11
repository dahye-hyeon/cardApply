package com.sunrise.creditcard.service;

import com.sunrise.creditcard.vo.CustVO;

public interface CustService {
	
	/* 회원 존재 유무 */
	public int selectCust(CustVO custVo);
	
	/* 회원 등록 */
	public void insertCust(CustVO custVo);

	/* 회원 번호 가져오기 */
	public String custNum(CustVO custVo);
}
