package com.sunrise.creditcard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunrise.creditcard.dao.CommCodeDAO;
import com.sunrise.creditcard.dao.RcvApplDAO;
import com.sunrise.creditcard.vo.RcvApplVO;

@Service
public class CommCodeServiceImpl implements CommonCodeService {

	@Autowired
	private RcvApplDAO rcvApplDao;
	@Autowired
	private CommCodeDAO CommCodeDao;
		
	@Override
	public void doubleRcv(RcvApplVO rcvApplVo) {
		int doubleRcv = CommCodeDao.doubleRcv(rcvApplVo);		
		if(doubleRcv>=1) {
			rcvApplDao.rcvAppl(rcvApplVo);
		}else {
			rcvApplDao.rcvAppl(rcvApplVo);
		}
	}

}
