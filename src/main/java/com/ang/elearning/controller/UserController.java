package com.ang.elearning.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.po.User;
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

	// 用户登录
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password) {
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			// 指明登录类型为普通用户登录(在授权时使用)
			currentUser.getSession().setAttribute("loginType", USER_LOGIN_TYPE);
			CustomizedToken customizedToken = new CustomizedToken(email, password, USER_LOGIN_TYPE);
			// 暂时指定为false，方便测试
			customizedToken.setRememberMe(false);
			try {
				currentUser.login(customizedToken);
				return "user/index";
			} catch (IncorrectCredentialsException ice) {
				System.out.println("登陆失败：邮箱/密码不匹配！");
			} catch (LockedAccountException lae) {
				System.out.println("登陆失败：账户已被冻结！");
			} catch (AuthenticationException ae) {
				System.out.println(ae.getMessage());
			}
			return "redirect:/login.jsp";
		} else {
			return "user/index";
		}
	}

	// 用户注册
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(User user, @RequestParam("birthStr") String birthStr) {
		userService.addUser(user,birthStr);
		return "redirect:/login.jsp";
	}

}
