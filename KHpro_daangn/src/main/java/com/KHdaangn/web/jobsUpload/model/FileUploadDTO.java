package com.KHdaangn.web.jobsUpload.model;

public class FileUploadDTO {

	public FileUploadDTO() {}
	
	public FileUploadDTO(String jobUId, String location, String url) {
		this.jobUId = jobUId;
		this.location = location;
		this.url = url;
	}
	
	private int id;
	private String jobUId;
	private String fileName;
	private String uuidName;
	private String location;
	private String url;
	private long fileSize;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobUId() {
		return jobUId;
	}

	public void setJobUId(String jobUId) {
		this.jobUId = jobUId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	@Override
	public String toString() {
		return "FileUploadDTO [id=" + id + ", jobUId=" + jobUId + ", fileName=" + fileName + ", uuidName=" + uuidName
				+ ", location=" + location + ", url=" + url + ", fileSize=" + fileSize + "]";
	}	
	
}