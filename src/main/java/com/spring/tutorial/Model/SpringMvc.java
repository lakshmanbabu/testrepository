package com.spring.tutorial.Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="spring_mvc")
public class SpringMvc implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer springId;
	private String topic;
	private String heading;
	private String headingContent;
	private String title;
	private String titleContent;
	private String subTitle;
	private String subTitleContent;
	private String titleImage;
	private Date createdDate;
	

	@Id
	@GeneratedValue
	@Column(name="springId")
	public Integer getSpringId() {
		return springId;
	}

	public void setSpringId(Integer springId) {
		this.springId = springId;
	}
	
	@Column(name="topic")
	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	@Column(name="heading")
	public String getHeading() {
		return heading;
	}

	public void setHeading(String heading) {
		this.heading = heading;
	}
	@Column(name="headingContent")
	public String getHeadingContent() {
		return headingContent;
	}

	public void setHeadingContent(String headingContent) {
		this.headingContent = headingContent;
	}
	@Column(name="title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="titleContent")
	public String getTitleContent() {
		return titleContent;
	}

	public void setTitleContent(String titleContent) {
		this.titleContent = titleContent;
	}
	@Column(name="subTitle")
	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	@Column(name="subTitleContent")
	public String getSubTitleContent() {
		return subTitleContent;
	}

	public void setSubTitleContent(String subTitleContent) {
		this.subTitleContent = subTitleContent;
	}
	
	@Column(name="title_Image")
	public String getTitleImage() {
		return titleImage;
	}

	public void setTitleImage(String titleImage) {
		this.titleImage = titleImage;
	}
	@Column(name="createdDate")
	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	

	
}
