package com.spring.tutorial.Dao;

import java.util.List;

import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

public interface UserDao {

	public int saveUserDetails(User user);

	public void saveUserRole(UserRoles userRoles);

	public List<User> getUsersList();

	public User getUserById(Integer userId);

	public void updateUserDetails(User user);

	public void deleteUserById(Integer userId);

	//public UserRoles getUserRoleById(Integer userId);

}
