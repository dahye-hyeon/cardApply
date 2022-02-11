package com.sunrise.creditcard.service;

import com.sunrise.creditcard.vo.CardVO;

public interface CardService {
	
	/* 카드 소지 여부 */
	public int selectCard(CardVO cardVo);
	
	/* 카드 생성 */
	public int insertCard(CardVO cardVo);

}
