package com.KHdaangn.web.jobs.model;

import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class JobsDAO {
	private static final Logger logger = LoggerFactory.getLogger(JobsDAO.class);

	@Autowired
	private SqlSession session;
	
	public List<JobsDTO> selectList() {
		logger.info("selectList");
		List<JobsDTO> result = session.selectList("jobMapper.selectList");
		return result;
	}
	
	public JobsDTO selectJobInfo(String jobBId) {
		logger.info("selectInfo");
		JobsDTO result = session.selectOne("jobMapper.selectJobInfo", jobBId);
		return result;
	}
	public JobsDetailDTO selectJobDetailInfo(String jobBId) {
		logger.info("selectDetailInfo");
		JobsDetailDTO result = session.selectOne("jobMapper.selectJobDetailInfo", jobBId);
		return result;
	}
	public List<JobsDTO> selectOtherList(String addressCode) {
		logger.info("selectList");
		List<JobsDTO> result = session.selectList("jobMapper.selectJobOtherInfo", addressCode);
		return result;
	}
	
	public boolean insertJob(JobsDTO data) {
		int result = 0;
		result = session.insert("jobMapper.insertJob", data);
		return result == 1? true : false;
	}
	public boolean insertJobDetail(JobsDetailDTO data) {
		int result = 0;
		result = session.insert("jobMapper.insertJobDetail", data);
		return result == 1? true : false;
	}
	
	public boolean updateJobDetail(JobsDetailDTO data) {
		int result = 0;
		result = session.update("jobMapper.updateJobDetail", data);
		return result == 1? true : false;
	}
	
	public boolean deleteData(JobsDTO data) {
		int result = session.delete("jobMapper.deleteData", data.getJobBId());
		return result == 1 ? true : false;
	}
	
}