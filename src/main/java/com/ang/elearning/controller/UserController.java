package com.ang.elearning.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private IUserService userService;
	
	//REST风格
	@RequestMapping(value="/getUserById/{id}",method=RequestMethod.GET)
	public ModelAndView testGetUserById(@PathVariable("id") Integer id){
		ModelAndView modelAndView = new ModelAndView("test");
		modelAndView.addObject("user", userService.getUserById(id));
		return modelAndView;
		
	}

}
