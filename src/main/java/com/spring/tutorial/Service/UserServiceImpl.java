package com.spring.tutorial.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tutorial.Dao.UserDao;
import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	public UserDao userDao;
	
	@Override
	@Transactional
	public int saveUserDetails(User user) {
		return userDao.saveUserDetails(user);
		
	}

	@Override
	@Transactional
	public void saveUserRole(UserRoles userRoles) {
		userDao.saveUserRole(userRoles);
		
	}

	@Override
	@Transactional
	public List<User> getUsersList() {
		List<User> ur =userDao.getUsersList();
		return ur;
	}

	@Override
	@Transactional
	public User getUserById(Integer userId) {
		User ur =userDao.getUserById(userId);
		return ur;
	}

	@Override
	@Transactional
	public void updateUserDetails(User user) {
		userDao.updateUserDetails(user);
		
	}

	@Override
	@Transactional
	public void deleteUserById(Integer userId) {
		userDao.deleteUserById(userId);
		
	}

	/*@Override
	@Transactional
	public UserRoles getUserRoleById(Integer userId) {
		
		return userDao.getUserRoleById(userId);
	}*/

}
