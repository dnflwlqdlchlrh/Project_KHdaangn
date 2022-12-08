package com.KHdaangn.web.login.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.KHdaangn.web.coolsms.service.CoolsmsService;


@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale) {
		logger.info("login페이지로 이동", locale);
		
		return "login/login";
	}
	
	// 로그인 메시지 보내기
	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String sendSms(HttpServletRequest request) throws Exception {

      String api_key = "NCSCXAGNJIBINBEP"; //위에서 받은 api key를 추가
      String api_secret = "L5YVUM1RN2MZUETPNTJQLUOWP13AN3LS";  //위에서 받은 api secret를 추가

      Random rand = new Random();
      String str = Integer.toString(rand.nextInt(100000) + 1);
      
      CoolsmsService coolsms = new CoolsmsService(api_key, api_secret);
      //이 부분은 홈페이지에서 받은 자바파일을 추가한다음 그 클래스를 import해야 쓸 수 있는 클래스이다.
      

      HashMap<String, String> set = new HashMap<String, String>();
      set.put("to", request.getParameter("to")); // 수신번호

      set.put("from", "01047985025"); 
      // (String)request.getParameter("from")); // 발신번호, jsp에서 전송한 발신번호를 받아 map에 저장한다.
      set.put("text", "인증번호는 " + "[" + str + "]" + "입니다."); 
      // (String)request.getParameter("text")); // 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다.
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

      return "login/login"; //문자 메시지 발송 성공했을때 login 페이지로 이동함
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
