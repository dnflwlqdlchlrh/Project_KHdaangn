package com.KHdaangn.web.jobs.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.KHdaangn.web.jobs.model.JobsDetailDTO;
import com.KHdaangn.web.jobs.model.JobsVariableDTO;
import com.KHdaangn.web.jobs.model.JobsDTO;
import com.KHdaangn.web.jobs.service.JobsService;
import com.KHdaangn.web.jobsUpload.model.FileUploadDTO;
import com.KHdaangn.web.jobsUpload.service.FileUploadService;

@Controller
public class JobsController {
	
	private static final Logger logger = LoggerFactory.getLogger(JobsController.class);
	
	@Autowired
	private JobsService jobService;
	
	@Autowired
	private FileUploadService uploadService;
	
	// 인기 당근알바 조회 페이지
	@RequestMapping(value="/jobs", method=RequestMethod.GET)
	public String getList(Model model
			//, @SessionAttribute(name="loginData", required=false) AccountDTO accountDto
			) {		
		List<JobsDTO> jobDatas = jobService.getJobsList();
		model.addAttribute("jobList", jobDatas);
		logger.info("jobsDatas={}", jobDatas);
		return "jobs/jobs";
	}
	
	// 알바 게시물 페이지
	@RequestMapping(value="/jobs/job-posts/{jobBId}", method = RequestMethod.GET)
	public String getDetail(Model model, HttpSession session, HttpServletResponse response
			, @PathVariable String jobBId) throws Exception {
		JobsDTO jobBaseDatas = jobService.getJobInfo(session, jobBId);
		JobsDetailDTO jobDetailDatas = jobService.getJobDetailInfo(session, jobBId);
		JobsVariableDTO jobVarDatas = jobService.getJobVarInfo(session, jobBId);
		List<FileUploadDTO> fileDatas = uploadService.getDatas(jobBId);
		String addressCode = jobDetailDatas.getAddressCode();
		List<JobsDTO> jobDatas = jobService.getJobOtherList(session, jobBId, addressCode);
			//하단 목록 - 해당 게시물 제외, 해당 게시물과 같은 동만 출력, 최근 게시 등록일자 순서대로
		
		if(jobBaseDatas == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('해당 데이터는 존재하지 않습니다.');history.go(-1);</script>");
			w.flush();
			w.close();
			return null;
		} else {
			model.addAttribute("jobInfo", jobBaseDatas);
			model.addAttribute("detailInfo", jobDetailDatas);
			model.addAttribute("varInfo", jobVarDatas);
			model.addAttribute("fileDatas", fileDatas);
			model.addAttribute("jobList", jobDatas);
			return "jobs/job-posts";
		}
	}
	
	// 알바 게시물 추가 페이지
	@GetMapping(value="/jobs/add")
	public String add(Model model) {
		return "jobs/add";
	}
	
	@PostMapping(value = "/jobs/add")
	public String add(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response
			, @ModelAttribute JobsDTO jobsDto, @ModelAttribute JobsDetailDTO jobsDetailDto 
			//, @SessionAttribute(name="loginData", required=true) AccountDTO accountDto
			, @RequestParam("upload") MultipartFile[] files
			) throws Exception {
		logger.info("jobsAdd1={}", jobsDto);
		String jobBId = jobService.add(session, request, jobsDto, jobsDetailDto);
		
		if(jobBId != null) {
			System.out.println(jobBId);
			
			if(!files[0].getOriginalFilename().isEmpty()) {
				String location = request.getServletContext().getRealPath("/resources/upload/jobs");
				String url = "resources/upload/jobs";
				FileUploadDTO fileUploadDto = new FileUploadDTO(jobBId, location, url);
				logger.info("upload!!!!!(url={})", url);
				logger.info("upload!!!!!(location={})", location);
				uploadService.upload(files, fileUploadDto);
			}
			logger.info("jobsAdd2={}", jobsDto);
			return "redirect:job-posts/" + URLEncoder.encode(jobBId, "UTF-8");
					
		} else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('빠진 항목이나 잘못된 값이 없는지 확인해주세요.');history.go(-1);</script>");
			w.flush();
			w.close();
			return null;
		}
	}


	
}
