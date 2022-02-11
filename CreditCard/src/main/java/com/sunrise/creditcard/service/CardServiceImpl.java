package com.sunrise.creditcard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunrise.creditcard.dao.CardDAO;
import com.sunrise.creditcard.vo.RcvApplVO;

@Service
public class CardServiceImpl implements CardService{

	@Autowired
	private CardDAO cardDao;

	/* 카드 소지 여부 */
	@Override
	public int selectCard(RcvApplVO rcvApplVo) {
		return cardDao.selectCard(rcvApplVo);
	}
	
	/* 카드 생성 */
	@Override
	public int insertCard(RcvApplVO rcvApplVo) {
		return cardDao.insertCard(rcvApplVo);
	}

}
