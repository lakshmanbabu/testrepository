package com.spring.tutorial.Model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="spring_titles")
public class SpringTitles {

	private Integer sTitleId;
	private String titleName;
	private Date createdDate;
	
	private Set<SpringMvc> springMvcs = new HashSet<SpringMvc>(0);
	
	@Id
	@GeneratedValue
	@Column(name="sTitleId")
	public Integer getsTitleId() {
		return sTitleId;
	}
	public void setsTitleId(Integer sTitleId) {
		this.sTitleId = sTitleId;
	}
	
	@Column(name="titleName")
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	
	@Column(name="createdDate")
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="titles",cascade=CascadeType.ALL)
	public Set<SpringMvc> getSpringMvcs() {
		return springMvcs;
	}
	public void setSpringMvcs(Set<SpringMvc> springMvcs) {
		this.springMvcs = springMvcs;
	}
	
	
}
