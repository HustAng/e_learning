package com.ang.elearning.controller;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.service.IUserService;
import com.ang.elearning.shiro.CustomizedToken;
import com.ang.elearning.shiro.LoginType;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final String USER_LOGIN_TYPE = LoginType.USER.toString();

	@Resource
	private IUserService userService;

	// REST风格
	@RequestMapping(value = "/getUserById/{id}", method = RequestMethod.GET)
	public ModelAndView testGetUserById(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("test");
		modelAndView.addObject("user", userService.getUserById(id));
		return modelAndView;

	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password) {
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			CustomizedToken customizedToken = new CustomizedToken(email, password, USER_LOGIN_TYPE);
			customizedToken.setRememberMe(false);
			try {
				currentUser.login(customizedToken);
				return "user/index";
			} catch (IncorrectCredentialsException ice) {
				System.out.println("邮箱/密码不匹配！");
			} catch (LockedAccountException lae) {
				System.out.println("账户已被冻结！");
			} catch (AuthenticationException ae) {
				System.out.println(ae.getMessage());
			}
		}
		return "redirect:/login.jsp";
	}

}
