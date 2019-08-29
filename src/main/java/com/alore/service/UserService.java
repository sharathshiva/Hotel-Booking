package com.alore.service;

import org.springframework.stereotype.Service;
import com.alore.model.User;

@Service
public interface UserService {
	
	//this method will register new user
		public boolean registerUser(User user);
		
		//this mehtod will delete user from database using email
		public boolean deleteUser(String email);
		
		//this method will update userdetails to database
		public boolean updateUser(User user);
		
		//this method will login the user
		public User loginUser(User user);
}
