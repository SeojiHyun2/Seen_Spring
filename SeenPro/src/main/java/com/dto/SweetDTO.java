package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("SweetDTO")
public class SweetDTO {
	
	private int num;
	private String userid;
	private String wCode;
	private String wName;
	private String wWork;
	private String artistname;
	
	public SweetDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SweetDTO(int num, String userid, String wCode, String wName, String wWork, String artistname) {
		super();
		this.num = num;
		this.userid = userid;
		this.wCode = wCode;
		this.wName = wName;
		this.wWork = wWork;
		this.artistname = artistname;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getwCode() {
		return wCode;
	}

	public void setwCode(String wCode) {
		this.wCode = wCode;
	}

	public String getwName() {
		return wName;
	}

	public void setwName(String wName) {
		this.wName = wName;
	}

	public String getwWork() {
		return wWork;
	}

	public void setwWork(String wWork) {
		this.wWork = wWork;
	}

	public String getArtistname() {
		return artistname;
	}

	public void setArtistname(String artistname) {
		this.artistname = artistname;
	}

	@Override
	public String toString() {
		return "SweetDTO [num=" + num + ", userid=" + userid + ", wCode=" + wCode + ", wName=" + wName + ", wWork="
				+ wWork + ", artistname=" + artistname + "]";
	}
	
	
	
	
	
}