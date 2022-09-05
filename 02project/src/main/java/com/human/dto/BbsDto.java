package com.human.dto;

import java.util.Date;

public class BbsDto {
	private int bno;
	private String title;
	private String content;
	private Date day;
	private int click;
	private String id;
	private String gender;
	private String checkit;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCheckit() {
		return checkit;
	}
	public void setCheckit(String checkit) {
		this.checkit = checkit;
	}
	@Override
	public String toString() {
		return "BbsDto [bno=" + bno + ", title=" + title + ", content=" + content + ", day=" + day + ", click=" + click
				+ ", id=" + id + ", gender=" + gender + ", checkit=" + checkit + "]";
	}

}
