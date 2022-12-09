package com.KHdaangn.web.jobsUpload.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.KHdaangn.web.jobsUpload.model.FileUploadDAO;
import com.KHdaangn.web.jobsUpload.model.FileUploadDTO;

@Service
public class FileUploadService {
	
	@Autowired
	private FileUploadDAO dao;
	
	
	public List<FileUploadDTO> getDatas(String jobUId) {
		List<FileUploadDTO> datas = dao.selectDatas(jobUId);
		return datas;
	}
	
	private boolean _upload(MultipartFile file, FileUploadDTO data) throws Exception {
		File directory = new File(data.getLocation());
		if(!directory.exists()) {
			directory.mkdirs();
		}
		if(file.getSize() / (1024 * 1024 * 10) > 1) { 
			return false;
		}
		
		UUID uuid = UUID.nameUUIDFromBytes(file.getBytes()); 
		
		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
		
		data.setFileName(file.getOriginalFilename());
		data.setUuidName(uuid.toString() + "." + ext);
		data.setFileSize(file.getSize());
		
		boolean res = dao.insertData(data);
		if(res) {
			file.transferTo(new File(data.getLocation() + File.separatorChar + data.getUuidName()));
		}	
		return res;
	}
	
	public int upload(MultipartFile file, FileUploadDTO data) throws Exception {
		boolean res = this._upload(file, data);
		return res ? 1 : 0;
	}
	
	public int upload(MultipartFile[] files, FileUploadDTO data) throws Exception {
		int count = 0;
		for(MultipartFile file: files) {
			boolean res = this._upload(file, data);
			count = res ? count + 1 : count;
		}
		return count;
	}
}