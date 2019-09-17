package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("BoardDTO")
public class BoardDTO {
	
	private String title;
	private String content;
	private String writeday;
	private String artistname;
	private String userid;
	private int viewcnt;
	
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDTO(String title, String content, String writeday, String artistname, String userid, int viewcnt) {
		super();
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.artistname = artistname;
		this.userid = userid;
		this.viewcnt = viewcnt;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

	public String getArtistname() {
		return artistname;
	}

	public void setArtistname(String artistname) {
		this.artistname = artistname;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	@Override
	public String toString() {
		return "BoardDTO [title=" + title + ", content=" + content + ", writeday=" + writeday + ", artistname="
				+ artistname + ", userid=" + userid + ", viewcnt=" + viewcnt + "]";
	}


	
	
	
	
	

}
