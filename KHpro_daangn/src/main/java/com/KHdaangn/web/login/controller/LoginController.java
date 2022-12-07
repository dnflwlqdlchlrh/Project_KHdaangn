package com.KHdaangn.web.login.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.KHdaangn.web.coolsms.Coolsms;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request, Locale locale) throws Exception{
		logger.info("login", locale);
		
		 String api_key = "NCSCXAGNJIBINBEP"; //위에서 받은 api key를 추가
         String api_secret = "L5YVUM1RN2MZUETPNTJQLUOWP13AN3LS";  //위에서 받은 api secret를 추가
		
         Coolsms coolsms = new Coolsms(api_key, api_secret);

         HashMap<String, String> set = new HashMap<String, String>();
         set.put("to", (String)request.getParameter("to")); // 수신번호
         System.out.println(set);
         
         set.put("from", "01047985025"); // 발신번호, jsp에서 전송한 발신번호를 받아 map에 저장한다.
         set.put("text", "test 문자 메시지"); // 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다.
         set.put("type", "sms"); // 문자 타입

         System.out.println(set);

         JSONObject result = coolsms.send(set); // 보내기&전송결과받기

         if ((boolean)result.get("status") == true) {

           // 메시지 보내기 성공 및 전송결과 출력
           System.out.println("성공");
           System.out.println(result.get("group_id")); // 그룹아이디
           System.out.println(result.get("result_code")); // 결과코드
           System.out.println(result.get("result_message")); // 결과 메시지
           System.out.println(result.get("success_count")); // 메시지아이디
           System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
         } else {

           // 메시지 보내기 실패
           System.out.println("실패");
           System.out.println(result.get("code")); // REST API 에러코드
           System.out.println(result.get("message")); // 에러메시지
         }
         
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formattedDate = dateFormat.format(date);
		
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
