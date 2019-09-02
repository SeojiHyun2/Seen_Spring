package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberDTO")
public class MemberDTO {
	private String userid;
	private String m_passwd;
	private String m_username;
	private String m_post;
	private String m_addr1;
	private String m_addr2;
	private String m_phone1;
	private String m_phone2;
	private String m_phone3;
	private String m_email1;
	private String m_email2;
	public MemberDTO(String userid, String m_passwd, String m_username, String m_post, String m_addr1, String m_addr2,
			String m_phone1, String m_phone2, String m_phone3, String m_email1, String m_email2) {
		super();
		this.userid = userid;
		this.m_passwd = m_passwd;
		this.m_username = m_username;
		this.m_post = m_post;
		this.m_addr1 = m_addr1;
		this.m_addr2 = m_addr2;
		this.m_phone1 = m_phone1;
		this.m_phone2 = m_phone2;
		this.m_phone3 = m_phone3;
		this.m_email1 = m_email1;
		this.m_email2 = m_email2;
	}
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getM_passwd() {
		return m_passwd;
	}
	public void setM_passwd(String m_passwd) {
		this.m_passwd = m_passwd;
	}
	public String getM_username() {
		return m_username;
	}
	public void setM_username(String m_username) {
		this.m_username = m_username;
	}
	public String getM_post() {
		return m_post;
	}
	public void setM_post(String m_post) {
		this.m_post = m_post;
	}
	public String getM_addr1() {
		return m_addr1;
	}
	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}
	public String getM_addr2() {
		return m_addr2;
	}
	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}
	public String getM_phone1() {
		return m_phone1;
	}
	public void setM_phone1(String m_phone1) {
		this.m_phone1 = m_phone1;
	}
	public String getM_phone2() {
		return m_phone2;
	}
	public void setM_phone2(String m_phone2) {
		this.m_phone2 = m_phone2;
	}
	public String getM_phone3() {
		return m_phone3;
	}
	public void setM_phone3(String m_phone3) {
		this.m_phone3 = m_phone3;
	}
	public String getM_email1() {
		return m_email1;
	}
	public void setM_email1(String m_email1) {
		this.m_email1 = m_email1;
	}
	public String getM_email2() {
		return m_email2;
	}
	public void setM_email2(String m_email2) {
		this.m_email2 = m_email2;
	}
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", m_passwd=" + m_passwd + ", m_username=" + m_username + ", m_post="
				+ m_post + ", m_addr1=" + m_addr1 + ", m_addr2=" + m_addr2 + ", m_phone1=" + m_phone1 + ", m_phone2="
				+ m_phone2 + ", m_phone3=" + m_phone3 + ", m_email1=" + m_email1 + ", m_email2=" + m_email2 + "]";
	}
	
	
	
}
