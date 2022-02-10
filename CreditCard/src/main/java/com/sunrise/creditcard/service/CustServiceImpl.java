package com.sunrise.creditcard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunrise.creditcard.dao.CustDAO;
import com.sunrise.creditcard.vo.CustVO;

@Service
public class CustServiceImpl implements CustService {

	@Autowired
	private CustDAO custDao;
	
	/* 회원 존재 유무 */
	@Override
	public int selectCust(CustVO custVo) {
		return custDao.selectCust(custVo);
	}
	
	/* 회원 등록 */
	@Override
	public void insertCust(CustVO custVo) {
		
		int selectCust = selectCust(custVo);		
		if(selectCust==0) {
			custDao.insertCust(custVo);
		}else if(selectCust >= 1) {
			System.out.println("이미 존재하는 회원");
		}
	}
}
