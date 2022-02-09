package com.sunrise.creditcard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/card")
public class CardController {
	
	@RequestMapping(value = "/inquiryForm", method = RequestMethod.GET)
	public String cardInquiryForm() {
		return "cardInquiryForm";
	}
	
	@RequestMapping(value = "/cardDetailInquiry", method = RequestMethod.GET)
	public String CardDetailInquiry() {
		return "cardDetailInquiry";
	}
	
}
