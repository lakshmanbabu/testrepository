package com.spring.tutorial.Service;

import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

public interface UserService {

	public int saveUserDetails(User user);

	public void saveUserRole(UserRoles userRoles);

}
