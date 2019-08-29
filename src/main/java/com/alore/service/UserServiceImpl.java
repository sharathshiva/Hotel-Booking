package com.alore.service;

import javax.transaction.Transactional;

import com.alore.dao.UserDAO;
import com.alore.model.User;

public class UserServiceImpl implements UserService{
	
	private UserDAO userDao;
	
	@Transactional
	public boolean registerUser(User user) {
		// TODO Auto-generated method stub
		return userDao.registerUser(user);
	}

	@Transactional
	public boolean deleteUser(String email) {
		// TODO Auto-generated method stub
		return userDao.deleteUser(email);
	}

	@Transactional
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user);
	}

	@Transactional
	public User loginUser(User user) {
		// TODO Auto-generated method stub
		return userDao.loginUser(user);
	}


}
