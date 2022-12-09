package com.KHdaangn.web.jobs.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KHdaangn.web.jobs.model.JobsDetailDTO;
import com.KHdaangn.web.jobs.model.JobsVariableDTO;
import com.KHdaangn.web.jobs.model.JobsDAO;
import com.KHdaangn.web.jobs.model.JobsDTO;


@Service
public class JobsService {
private static final Logger logger = LoggerFactory.getLogger(JobsService.class);
	
	@Autowired
	private JobsDAO dao;
	
	public List<JobsDTO> getJobsList() {
		logger.info("getAll()");
		List<JobsDTO> datas = dao.selectList();
		return datas;
	}
	
	public JobsDTO getJobInfo(HttpSession session, String jobBId) {
		JobsDTO datas = dao.selectJobInfo(jobBId);
		return datas;
	}
	public JobsDetailDTO getJobDetailInfo(HttpSession session, String jobBId) {
		JobsDetailDTO datas = dao.selectJobDetailInfo(jobBId);
		return datas;
	}
	public JobsVariableDTO getJobVarInfo(HttpSession session, String jobBId) {
		JobsDetailDTO jobDetailDatas = dao.selectJobDetailInfo(jobBId);
		JobsDTO jobDatas = dao.selectJobInfo(jobBId);
		JobsVariableDTO datas = new JobsVariableDTO();
		
		String payDatas = "";
		int payInt = jobDetailDatas.getPay();
		String payStr = Integer.toString(jobDetailDatas.getPay());
		String payCut1 = payStr.substring(payStr.length()-4, payStr.length());
		String payCut2 = payStr.substring(0, payStr.length()-4);
		if(payCut1.equals("0000") && payInt > 9999) {
			payDatas = payCut2 + "만원";
			datas.setPayStr(payDatas);
		} else {
			datas.setPayStr(payStr + "원");
		}

		Date today = new Date();
		today.setTime(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyyMMdd");
		String todayStr = dayFormat.format(today);
		String postDateStr = dayFormat.format(jobDatas.getPostDate());
		int dDay = Integer.parseInt(todayStr) - Integer.parseInt(postDateStr);
		if(dDay/10000 >= 1) {
			String year = Integer.toString(dDay/10000);		
			datas.setPostDateStr(year + "년 전 작성");
		} else if(dDay/100 >= 1){
			String month = Integer.toString(dDay/100);		
			datas.setPostDateStr(month + "개월 전 작성");
		} else if(dDay >= 1) {
			String day = Integer.toString(dDay);
			datas.setPostDateStr(day + "일 전 작성");
		} else {
			datas.setPostDateStr("오늘 작성");
		}		
		return datas;
	}
	public List<JobsDTO> getJobOtherList(HttpSession session, String jobBId, String addressCode) {
		logger.info("getOtherList()");
		List<JobsDTO> datas = dao.selectOtherList(addressCode);		
		Iterator<JobsDTO> iter = datas.iterator(); 
		while(iter.hasNext()) { 
			JobsDTO jobOne = iter.next();
			if(jobOne.getJobBId().equals(jobBId)) {
				iter.remove();
			}
		}
		return datas;
	}
	
	@Transactional
	public String add(HttpSession session, HttpServletRequest request, JobsDTO job, JobsDetailDTO jobDetail
			) {
		
		JobsDTO jobDto = new JobsDTO();
		JobsDetailDTO jobDetailDto = new JobsDetailDTO();

		String uuid = UUID.randomUUID().toString().substring(24,35);
		String keyTitle = jobDetail.getTitle().replaceAll("[ /@#$%^&*()<>{}]", "-");
		String jobBId = keyTitle + "-" + uuid;
		jobDto.setJobBId(jobBId);
		
		jobDto.setUserId(job.getUserId()); //jobDto.setUserId(userDto.getUserId());
		jobDetailDto.setJobDId(jobBId);
		jobDetailDto.setTitle(jobDetail.getTitle());
		jobDetailDto.setPayType(jobDetail.getPayType());
		jobDetailDto.setPay(jobDetail.getPay());
		jobDetailDto.setCompanyName(jobDetail.getCompanyName());
		jobDetailDto.setAddress(jobDetail.getAddress());
		jobDetailDto.setAddressCode(jobDetail.getAddressCode());
		jobDetailDto.setAddressName(jobDetail.getAddressName());
		jobDetailDto.setWeek(jobDetail.getWeek());
		jobDetailDto.setWeekNego(jobDetail.getWeekNego());
		jobDetailDto.setStartTime(jobDetail.getStartTime());
		jobDetailDto.setEndTime(jobDetail.getEndTime());
		jobDetailDto.setTimeNego(jobDetail.getTimeNego());
		jobDetailDto.setDetail(jobDetail.getDetail());
		
		boolean jobResult = dao.insertJob(jobDto);
		boolean jobDetailResult = dao.insertJobDetail(jobDetailDto);
		
		if(jobResult && jobDetailResult) {
			return jobDto.getJobBId();
		}
		return null;
	}
	


	@Transactional
	public String modify(HttpSession session, HttpServletRequest request, JobsDetailDTO jobDetail
			) {
	
		JobsDetailDTO jobDetailDto = new JobsDetailDTO();

		jobDetailDto.setJobDId(jobDetail.getJobDId());
		jobDetailDto.setTitle(jobDetail.getTitle());
		jobDetailDto.setPayType(jobDetail.getPayType());
		jobDetailDto.setPay(jobDetail.getPay());
		jobDetailDto.setCompanyName(jobDetail.getCompanyName());
		jobDetailDto.setAddress(jobDetail.getAddress());
		jobDetailDto.setAddressCode(jobDetail.getAddressCode());
		jobDetailDto.setAddressName(jobDetail.getAddressName());
		jobDetailDto.setWeek(jobDetail.getWeek());
		jobDetailDto.setWeekNego(jobDetail.getWeekNego());
		jobDetailDto.setStartTime(jobDetail.getStartTime());
		jobDetailDto.setEndTime(jobDetail.getEndTime());
		jobDetailDto.setTimeNego(jobDetail.getTimeNego());
		jobDetailDto.setDetail(jobDetail.getDetail());
		
		logger.info("detailService1!!!!!!" + jobDetail.getJobDId() + jobDetailDto);
		
		boolean jobDetailResult = dao.updateJobDetail(jobDetailDto);
		
		System.out.println("detailService2!!!" + jobDetailResult);
		
		if(jobDetailResult) {
			return jobDetail.getJobDId();
		}
		return null;
	}
	
	@Transactional
	public boolean remove(HttpSession session, JobsDTO data) {
		boolean result = dao.deleteData(data);
		return result;
	}
}