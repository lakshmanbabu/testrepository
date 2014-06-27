package com.spring.tutorial.Dao;

import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

public interface UserDao {

	public int saveUserDetails(User user);

	public void saveUserRole(UserRoles userRoles);

}
