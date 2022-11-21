package com.KHdaangn.web.jobs.controller;

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
public class JobsController {
	
	private static final Logger logger = LoggerFactory.getLogger(JobsController.class);
	
	// 인기 당근알바 조회 페이지
	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public String jobs(Locale locale, Model model) {
		logger.info("jobs", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "jobs/jobs";
	}
	
	// 알바 게시물 페이지
	@RequestMapping(value = "/job-posts", method = RequestMethod.GET)
	public String jobPosts(Locale locale, Model model) {
		logger.info("job-posts", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "jobs/job-posts";
	}
	
	// 알바 게시물 추가 페이지
	@RequestMapping(value = "/jobs/add", method = RequestMethod.GET)
	public String jobAdd(Locale locale, Model model) {
		logger.info("jobAdd", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "jobs/add";
	}
	
}
