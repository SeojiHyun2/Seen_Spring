package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("Board_repDTO")
public class Board_repDTO {
	
	private int reply_id;
	private int parent_id;
	private int boardno;
	private int depth;
	private String reply_content;
	private String reply_writeday;
	private String artistname;
	private String userid;
	
	public Board_repDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board_repDTO(int reply_id, int parent_id, int boardno, int depth, String reply_content,
			String reply_writeday, String artistname, String userid) {
		super();
		this.reply_id = reply_id;
		this.parent_id = parent_id;
		this.boardno = boardno;
		this.depth = depth;
		this.reply_content = reply_content;
		this.reply_writeday = reply_writeday;
		this.artistname = artistname;
		this.userid = userid;
	}

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public int getParent_id() {
		return parent_id;
	}

	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getReply_writeday() {
		return reply_writeday;
	}

	public void setReply_writeday(String reply_writeday) {
		this.reply_writeday = reply_writeday;
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

	@Override
	public String toString() {
		return "Board_repDTO [reply_id=" + reply_id + ", parent_id=" + parent_id + ", boardno=" + boardno + ", depth="
				+ depth + ", reply_content=" + reply_content + ", reply_writeday=" + reply_writeday + ", artistname="
				+ artistname + ", userid=" + userid + "]";
	}
	
	
	
	
	
	
	

}
