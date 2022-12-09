package com.KHdaangn.web.jobs.model;

public class JobsDetailDTO {

	public JobsDetailDTO() {}
	
	public JobsDetailDTO(String jobDId) {
		this.jobDId = jobDId;
	}
	
	private String jobDId;
	private String title;
	private String payType;
	private int pay;
	private String companyName;
	private String address;
	private String addressCode;
	private String addressName;
	private String week;
	private String weekNego;
	private String startTime;
	private String endTime;
	private String timeNego;
	private String detail;
	
	public String getJobDId() {
		return jobDId;
	}

	public void setJobDId(String jobDId) {
		this.jobDId = jobDId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getAddressCode() {
		return addressCode;
	}

	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}
	
	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getWeekNego() {
		return weekNego;
	}

	public void setWeekNego(String weekNego) {
		this.weekNego = weekNego;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getTimeNego() {
		return timeNego;
	}

	public void setTimeNego(String timeNego) {
		this.timeNego = timeNego;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "JobsDetailDTO [jobDId=" + jobDId + ", title=" + title + ", payType=" + payType + ", pay=" + pay
				+ ", companyName=" + companyName + ", address=" + address + ", addressCode=" + addressCode + ", week="
				+ week + ", weekNego=" + weekNego + ", startTime=" + startTime + ", endTime=" + endTime + ", timeNego="
				+ timeNego + ", detail=" + detail + "]";
	}
	
}