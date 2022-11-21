package com.KHdaangn.web.realty.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RealtyController {
	
	private static final Logger logger = LoggerFactory.getLogger(RealtyController.class);
	
	// 인기 부동산 직거래 게시물 조회 페이지 
	@RequestMapping(value = "/realty", method = RequestMethod.GET)
	public String realty(Locale locale, Model model) {
		logger.info("realty", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "realty/realty";
	}
	
	// 부동산 게시물 페이지
	@RequestMapping(value = "/realty-posts", method = RequestMethod.GET)
	public String realtyPosts(Locale locale, Model model) {
		logger.info("realty-posts", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "realty/realty-posts";
	}
	
	// 부동산 게시물 추가 페이지
		@RequestMapping(value = "/realty/add", method = RequestMethod.GET)
		public String realtyAdd(Locale locale, Model model) {
			logger.info("realtyAdd", locale);
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			model.addAttribute("serverTime", formattedDate );
			
			return "realty/add";
		}
	
}
