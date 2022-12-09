package com.KHdaangn.web.jobs.model;

import java.util.Date;

import com.KHdaangn.web.jobsUpload.model.FileUploadDTO;

public class JobsDTO {
	
	public JobsDTO() {}
	
	public JobsDTO(String jobBId) {
		this.jobBId = jobBId;
	}
	
	private String jobBId;
	private String userId;
	private Date postDate;
	private JobsDetailDTO detailObj;
	private FileUploadDTO imgObj;

	public String getJobBId() {
		return jobBId;
	}

	public void setJobBId(String jobBId) {
		this.jobBId = jobBId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public JobsDetailDTO getDetailObj() {
		return detailObj;
	}

	public void setDetailObj(JobsDetailDTO detailObj) {
		this.detailObj = detailObj;
	}
	
	public FileUploadDTO getImgObj() {
		return imgObj;
	}

	public void setImgObj(FileUploadDTO imgObj) {
		this.imgObj = imgObj;
	}
	
	@Override
	public String toString() {
		return "JobsDTO [jobBId=" + jobBId + ", userId=" + userId + ", postDate=" + postDate + ", imgObj=" + imgObj
				+ ", detailObj=" + detailObj + "]";
	}
	
}