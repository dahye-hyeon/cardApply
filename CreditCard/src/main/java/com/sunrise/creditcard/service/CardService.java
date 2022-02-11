package com.sunrise.creditcard.service;

import com.sunrise.creditcard.vo.RcvApplVO;

public interface CardService {
	
	/* 카드 소지 여부 */
	public int selectCard(RcvApplVO rcvApplVo);
	
	/* 카드 생성 */
	public int insertCard(RcvApplVO rcvApplVo);

}
