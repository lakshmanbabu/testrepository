package com.spring.tutorial.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="user_roles")
public class UserRoles implements Serializable{

	private static final long serialVersionUID = 1L;
	private Integer userRoleId;
	private String userRole;
	private User user;
	
	
	public UserRoles()
	{
		
	}
	public UserRoles(Integer userRoleId,String userRole)
	{
		this.userRoleId=userRoleId;
		this.userRole=userRole;
	}
	
	public UserRoles(String userRole)
	{
		
		this.userRole=userRole;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="role_id")
	public Integer getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}
	@Column(name="user_role")
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
