package com.human.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CrawlingDto {
	private String name;
	private int cno;
	private int score;
	private String img;
	
//	공지사항
	private int bno;
	private String title;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date day;
	private int viewcount;
	private String writer;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
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
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "CrawlingDto [name=" + name + ", cno=" + cno + ", score=" + score + ", img=" + img + ", bno=" + bno
				+ ", title=" + title + ", content=" + content + ", day=" + day + ", viewcount=" + viewcount
				+ ", writer=" + writer + "]";
	}
	
		


	}
