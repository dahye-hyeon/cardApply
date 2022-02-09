package com.sunrise.creditcard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/cust")
public class CustController {
		
	@RequestMapping(value = "/rcvInquiryForm", method = RequestMethod.GET)
	public String rcvInquiryForm() {
		return "rcvInquiryForm";
	}
	
	@RequestMapping(value = "/memberInquiry", method = RequestMethod.GET)
	public String memberInquiry() {
		return "memberInquiry";
	}
}
