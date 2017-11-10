package com.oaec.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 公告
 * 
 */
public class News implements Serializable {
	
	private static final long serialVersionUID = 8419106325554272464L;
	
	private Integer id;
	/*标题*/
	private String title;
	/*主配图*/
	private String thumbnail;
	/*是否为轮播图*/
	private boolean top;
	/*主内容*/
	private String content;
	
	private int hits;
	/*发布时间*/
	private Date pub_time;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public boolean isTop() {
		return top;
	}
	
	public void setTop(boolean top) {
		this.top = top;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getPub_time() {
		return pub_time;
	}
	
	public void setPub_time(Date pub_time) {
		this.pub_time = pub_time;
	}
	
	public int getHits() {
		return hits;
	}
	
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", thumbnail="
				+ thumbnail + ", top=" + top + ", content=" + content
				+ ",hits=" + hits + ", pub_time=" + pub_time + "]";
	}
}
