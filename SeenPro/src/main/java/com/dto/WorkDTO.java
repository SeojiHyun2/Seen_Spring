package com.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Alias("WorkDTO")
public class WorkDTO {

	private String wCode;
	private String wCategory;
	private String wName;
	private String wDescribe;
	private String artistname;
	private String inputDay;
	private String wWork;
	private CommonsMultipartFile realWork;
	
	public WorkDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public CommonsMultipartFile getRealWork() {
		return realWork;
	}




	public void setRealWork(CommonsMultipartFile realWork) {
		this.realWork = realWork;
	}




	public WorkDTO(String wCode, String wCategory, String wName, String wDescribe, String artistname, String inputDay,
			String wWork, CommonsMultipartFile realWork) {
		super();
		this.wCode = wCode;
		this.wCategory = wCategory;
		this.wName = wName;
		this.wDescribe = wDescribe;
		this.artistname = artistname;
		this.inputDay = inputDay;
		this.wWork = wWork;
		this.realWork = realWork;
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
	public String getInputDay() {
		return inputDay;
	}
	public void setInputDay(String inputDay) {
		this.inputDay = inputDay;
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
				+ ", artistname=" + artistname + ", inputDay=" + inputDay + ", wWork=" + wWork + ", realWork="
				+ realWork + "]";
	}
	
	


	
	
}
