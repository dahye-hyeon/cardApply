package com.sunrise.creditcard.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sunrise.creditcard.service.CardServiceImpl;
import com.sunrise.creditcard.service.CustServiceImpl;
import com.sunrise.creditcard.service.RcvApplServiceImpl;
import com.sunrise.creditcard.vo.CardVO;
import com.sunrise.creditcard.vo.CommCodeDtlVO;
import com.sunrise.creditcard.vo.CustVO;
import com.sunrise.creditcard.vo.RcvApplVO;

@Controller
@RequestMapping(value = "/rcvAppl")
public class RcvApplController {
	
	@Autowired
	private RcvApplServiceImpl rcvApplServiceImpl;
	@Autowired
	private CustServiceImpl custServiceImpl;
	@Autowired
	private CardServiceImpl cardServiceImpl;
	
	
	/* 입회 신청폼으로 이동 */
	@RequestMapping(value = "/rcvForm", method = RequestMethod.GET)
	public ModelAndView RcvForm(ModelAndView mav) {
		//신청구분
		List<CommCodeDtlVO> getApplClas = rcvApplServiceImpl.getApplClas();
		mav.addObject("applClasList", getApplClas);
		
		//브랜드
		List<CommCodeDtlVO> getBrand = rcvApplServiceImpl.getBrand();
		mav.addObject("brandList", getBrand);
		
		//결제은행
		List<CommCodeDtlVO> getBank = rcvApplServiceImpl.getBank();
		mav.addObject("bankList", getBank);
		
		//결제일자
		List<CommCodeDtlVO> getStlDate = rcvApplServiceImpl.getStlDate();
		mav.addObject("stlDateList", getStlDate);
		
		//청구서 발송방법
		List<CommCodeDtlVO> getStmtMtd = rcvApplServiceImpl.getStmtMtd();
		mav.addObject("stmtMtdList", getStmtMtd);
		
		//결제 방법
		List<CommCodeDtlVO> getStlMth = rcvApplServiceImpl.getStlMth();
		mav.addObject("stlMtdList", getStlMth);
		
		mav.setViewName("rcvapplForm");
		return mav;
	}
	
	/* 입회 신청 */
	@RequestMapping(value = "/rcvApplication", method = RequestMethod.POST)
	public String rcvAppl(@ModelAttribute RcvApplVO rcvApplVo, @ModelAttribute CustVO custVo, @ModelAttribute CardVO cardVo) {
		
		String rcvDate = rcvApplVo.getRCV_D();
		
		rcvApplServiceImpl.rcvAppl(rcvApplVo);		
		
		//불능이 아닐 때
		if(!"1".equals(rcvApplVo.getIMPSB_CLAS())){
			//회원테이블에 추가
			custVo.setREG_D(rcvDate);
			custServiceImpl.insertCust(custVo);
			
			//카드 테이블에 추가
			String brdNum = "";
			String brd = rcvApplVo.getBRD();
			if("1".equals(brd)) {
				brdNum = "531011";
			}else if("2".equals(brd)) {
				brdNum = "490611";
			}else if("3".equals(brd)) {
				brdNum = "356011";
			}
			
			String custNum = custServiceImpl.custNum(custVo);
			cardVo.setCUST_NO(custNum);
			cardVo.setREG_D(rcvDate);
			cardVo.setCRD_NO(brdNum);
			
			cardServiceImpl.insertCard(cardVo);
		}
		return "main";
	}
	
	/*입회 신청 내역 폼*/
	@RequestMapping(value = "/rcvInquiryForm", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView rcvInquiryForm(ModelAndView mav) {
		//신청구분
		List<CommCodeDtlVO> getApplClas = rcvApplServiceImpl.getApplClas();
		mav.addObject("applClasList", getApplClas);
		mav.setViewName("rcvInquiryForm");
		return mav;
	}
	
//	/* 입회 신청 내역 조회*/
//	@ResponseBody
//	@RequestMapping(value = "/rcvInquiry", method = RequestMethod.POST)
//	public String rcvInquiry(@RequestBody RcvApplVO rcvApplVo, HttpServletResponse response) {
//		System.out.println("RCV:" + rcvApplVo);
//		rcvApplServiceImpl.rcvInquiry(rcvApplVo);
//		return "null";
//	}
}
