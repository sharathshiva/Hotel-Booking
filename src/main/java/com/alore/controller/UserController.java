package com.alore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alore.model.User;
import com.alore.service.UserService;


@Controller
@RequestMapping("/user")//this url can only be used for user 
public class UserController {
	
	private UserService userService;
	
	//this will return it to home page
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public ModelAndView getHomePage() {
		ModelAndView view= new ModelAndView("home");
		return view;
	}
	
	// this method will return it to /update page
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public ModelAndView getUpdateUserPage() {
		ModelAndView view= new ModelAndView("updateuser");
		return view;
	}
	//this method will return it to /register page
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public ModelAndView getRegisterUserPage() {
		ModelAndView view= new ModelAndView("register");
		return view;
	}
	
	//this method will retur it to /login page
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView getLoginUserPage() {
		ModelAndView view= new ModelAndView("login");
		return view;
	}
	
	// this method will register the user to acess the application.
	// it also stores iformation in  database also
	@RequestMapping(value= "/register", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") User user){
		boolean result=userService.registerUser(user);
		if(result){
			//new person and add it
			return new ModelAndView("login");
		}else
			return new ModelAndView("register");
	}
	
	//this method will update user  information
	//update user details in database also
	@RequestMapping(value= "/update", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute("user") User user){
		boolean result=userService.updateUser(user);
		if(result){
			//update person
			return new ModelAndView("home") ;
		}else
			return new ModelAndView("updateuser");
	}
	
	//this will delete user information from database
	@RequestMapping(value="/delete/{email}")
	public ModelAndView deleteUser(@PathVariable("email") String email) {
		boolean status=userService.deleteUser(email);
		if(status) {
			return new ModelAndView("home");
		}else
			 return new ModelAndView("deleteuser");
	}
	
	//this method will login the user and redirect to home.jsp page
	@RequestMapping(value="/login")
	public ModelAndView loginUser(@ModelAttribute User user) {
		User status=userService.loginUser(user);
		if(status!=null) {
			return new ModelAndView("home");
		}else
			 return new ModelAndView("login");
	}
}
