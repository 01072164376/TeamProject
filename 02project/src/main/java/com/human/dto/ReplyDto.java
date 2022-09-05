package com.human.dto;

import java.util.Date;

public class ReplyDto {
	private Integer rno;
	private Integer bno;
	private String recontent;
	private String reid;
	private Date day;
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
		this.rno = rno;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getRecontent() {
		return recontent;
	}
	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}
	public String getReid() {
		return reid;
	}
	public void setReid(String reid) {
		this.reid = reid;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	@Override
	public String toString() {
		return "ReplyDto [rno=" + rno + ", bno=" + bno + ", recontent=" + recontent + ", reid=" + reid + ", day=" + day
				+ "]";
	}
	
}
