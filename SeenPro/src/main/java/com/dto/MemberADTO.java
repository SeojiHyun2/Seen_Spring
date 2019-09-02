package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberADTO")
public class MemberADTO {
	private String artistname;
	private String a_passwd;
	private String a_username;
	private String a_post;
	private String a_addr1;
	private String a_addr2;
	private String a_phone1;
	private String a_phone2;
	private String a_phone3;
	private String a_email1;
	private String a_email2;
	public MemberADTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberADTO(String artistname, String a_passwd, String a_username, String a_post, String a_addr1,
			String a_addr2, String a_phone1, String a_phone2, String a_phone3, String a_email1, String a_email2) {
		super();
		this.artistname = artistname;
		this.a_passwd = a_passwd;
		this.a_username = a_username;
		this.a_post = a_post;
		this.a_addr1 = a_addr1;
		this.a_addr2 = a_addr2;
		this.a_phone1 = a_phone1;
		this.a_phone2 = a_phone2;
		this.a_phone3 = a_phone3;
		this.a_email1 = a_email1;
		this.a_email2 = a_email2;
	}
	@Override
	public String toString() {
		return "MemberADTO [artistname=" + artistname + ", a_passwd=" + a_passwd + ", a_username=" + a_username
				+ ", a_post=" + a_post + ", a_addr1=" + a_addr1 + ", a_addr2=" + a_addr2 + ", a_phone1=" + a_phone1
				+ ", a_phone2=" + a_phone2 + ", a_phone3=" + a_phone3 + ", a_email1=" + a_email1 + ", a_email2="
				+ a_email2 + "]";
	}
	public String getArtistname() {
		return artistname;
	}
	public void setArtistname(String artistname) {
		this.artistname = artistname;
	}
	public String getA_passwd() {
		return a_passwd;
	}
	public void setA_passwd(String a_passwd) {
		this.a_passwd = a_passwd;
	}
	public String getA_username() {
		return a_username;
	}
	public void setA_username(String a_username) {
		this.a_username = a_username;
	}
	public String getA_post() {
		return a_post;
	}
	public void setA_post(String a_post) {
		this.a_post = a_post;
	}
	public String getA_addr1() {
		return a_addr1;
	}
	public void setA_addr1(String a_addr1) {
		this.a_addr1 = a_addr1;
	}
	public String getA_addr2() {
		return a_addr2;
	}
	public void setA_addr2(String a_addr2) {
		this.a_addr2 = a_addr2;
	}
	public String getA_phone1() {
		return a_phone1;
	}
	public void setA_phone1(String a_phone1) {
		this.a_phone1 = a_phone1;
	}
	public String getA_phone2() {
		return a_phone2;
	}
	public void setA_phone2(String a_phone2) {
		this.a_phone2 = a_phone2;
	}
	public String getA_phone3() {
		return a_phone3;
	}
	public void setA_phone3(String a_phone3) {
		this.a_phone3 = a_phone3;
	}
	public String getA_email1() {
		return a_email1;
	}
	public void setA_email1(String a_email1) {
		this.a_email1 = a_email1;
	}
	public String getA_email2() {
		return a_email2;
	}
	public void setA_email2(String a_email2) {
		this.a_email2 = a_email2;
	}
	
	
	
	
	
	
	
	
}
