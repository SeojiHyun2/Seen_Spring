package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("PageDTO")
public class PageDTO {

	private int perPage = 6; //페이지당 보여줄 갯수
	private int totalRecord;  //전체 레코드갯수
	private int curPage;    //현재 페이지
	private List<WorkDTO> list; //페이지에 보여줄 데이터
	
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public List<WorkDTO> getList() {
		return list;
	}
	public void setList(List<WorkDTO> list) {
		this.list = list;
	}
	
	
	
}
