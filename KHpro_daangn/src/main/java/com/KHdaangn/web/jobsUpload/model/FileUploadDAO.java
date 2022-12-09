package com.KHdaangn.web.jobsUpload.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileUploadDAO {
	
	@Autowired
	private SqlSession session;
	
	public boolean insertData(FileUploadDTO data) {
		int res = session.insert("jobUploadMapper.insertData", data);
		return res == 1 ? true : false;
	}
	
	public List<FileUploadDTO> selectDatas(String jobUId) {
		List<FileUploadDTO> res = session.selectList("jobUploadMapper.selectDatas", jobUId);
		return res;
	}
}