package com.KHdaangn.web.jobs.model;

public class JobsVariableDTO {

	public JobsVariableDTO() {}
	
	private String postDateStr;
	private String payStr;
	
	public String getPostDateStr() {
		return postDateStr;
	}
	public void setPostDateStr(String postDateStr) {
		this.postDateStr = postDateStr;
	}
	public String getPayStr() {
		return payStr;
	}
	public void setPayStr(String payStr) {
		this.payStr = payStr;
	}
	@Override
	public String toString() {
		return "JobsVariableDTO [postDateStr=" + postDateStr + ", payStr=" + payStr + "]";
	}
	
	
}