package com.sunrise.creditcard.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sunrise.creditcard.service.CustServiceImpl;
import com.sunrise.creditcard.service.RcvApplServiceImpl;
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
	public String rcvAppl(@ModelAttribute RcvApplVO rcvApplVo, @ModelAttribute CustVO custVo) {
		rcvApplServiceImpl.rcvAppl(rcvApplVo);
		
		custVo.setREG_D((rcvApplVo.getRCV_D()));
		custServiceImpl.insertCust(custVo);
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
