package com.KHdaangn.web.articles.controller;

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
public class ArticlesController {
	
	private static final Logger logger = LoggerFactory.getLogger(ArticlesController.class);
	
	// 중고거래 게시물 페이지
	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String articles(Locale locale, Model model) {
		logger.info("articles", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "articles/articles";
	}
	
	// 중고거래 게시물 조회 페이지
	@RequestMapping(value = "/hot_articles", method = RequestMethod.GET)
	public String hotArticles(Locale locale, Model model) {
		logger.info("hotArticles", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "hot_articles";
	}
	
	// 검색 조회 페이지
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("search", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "search";
	}
	
	// 중고거래 게시물 추가 페이지
	@RequestMapping(value = "/articles/add", method = RequestMethod.GET)
	public String articlesAdd(Locale locale, Model model) {
		logger.info("articlesAdd", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "articles/add";
	}
	
}
