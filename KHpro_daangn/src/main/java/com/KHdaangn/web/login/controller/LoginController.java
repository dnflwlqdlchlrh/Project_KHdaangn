package com.KHdaangn.web.login.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("login", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "login/login";
	}
	
	// 회원가입 페이지
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		logger.info("join", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "login/join";
	}
	
	// 로그아웃
		@RequestMapping(value="/logout", method=RequestMethod.GET)
		public String logout(HttpSession session) {
			if(session.getAttribute("loginData") != null) {
				// 기존 세션은 유지한 상태에서 로그인 정보만 제거하여 로그아웃 시킨다.
				session.removeAttribute("loginData");
			}
			
			return "redirect:/KHdaangn";
		}
}
