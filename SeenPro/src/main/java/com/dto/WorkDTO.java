package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("WorkDTO")
public class WorkDTO {

	private String wCode;
	private String wCategory;
	private String wName;
	private String wDescribe;
	private String artistname;
	private String wWork;
	private String inputDay;
	
	public WorkDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getInputDay() {
		return inputDay;
	}



	public void setInputDay(String inputDay) {
		this.inputDay = inputDay;
	}



	public WorkDTO(String wCode, String wCategory, String wName, String wDescribe, String artistname, String wWork,
			String inputDay) {
		super();
		this.wCode = wCode;
		this.wCategory = wCategory;
		this.wName = wName;
		this.wDescribe = wDescribe;
		this.artistname = artistname;
		this.wWork = wWork;
		this.inputDay = inputDay;
	}



	public String getwCode() {
		return wCode;
	}
	public void setwCode(String wCode) {
		this.wCode = wCode;
	}
	public String getwCategory() {
		return wCategory;
	}
	public void setwCategory(String wCategory) {
		this.wCategory = wCategory;
	}
	public String getwName() {
		return wName;
	}
	public void setwName(String wName) {
		this.wName = wName;
	}
	public String getwDescribe() {
		return wDescribe;
	}
	public void setwDescribe(String wDescribe) {
		this.wDescribe = wDescribe;
	}
	public String getArtistname() {
		return artistname;
	}
	public void setArtistname(String artistname) {
		this.artistname = artistname;
	}
	public String getwWork() {
		return wWork;
	}
	public void setwWork(String wWork) {
		this.wWork = wWork;
	}



	@Override
	public String toString() {
		return "WorkDTO [wCode=" + wCode + ", wCategory=" + wCategory + ", wName=" + wName + ", wDescribe=" + wDescribe
				+ ", artistname=" + artistname + ", wWork=" + wWork + ", inputDay=" + inputDay + "]";
	}

	
	
	
}
