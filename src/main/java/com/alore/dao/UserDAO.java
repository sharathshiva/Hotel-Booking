package com.alore.dao;

import com.alore.model.User;

public interface UserDAO {
	
	//this method will register new user
	public boolean registerUser(User user);
	
	//this mehtod will delete user from database using email
	public boolean deleteUser(String email);
	
	//this method will update userdetails to database
	public boolean updateUser(User user);
	
	//this method will login the user
	public User loginUser(User user);

}
