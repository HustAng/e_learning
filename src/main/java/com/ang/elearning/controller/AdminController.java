package com.ang.elearning.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ang.elearning.shiro.CustomizedToken;
import com.ang.elearning.shiro.LoginType;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final String ADMIN_LOGIN_TYPE = LoginType.ADMIN.toString();

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
		Subject currentUser = SecurityUtils.getSubject();
		// 指明登录类型为管理员登录(在授权时使用)
		currentUser.getSession().setAttribute("loginType", ADMIN_LOGIN_TYPE);
		CustomizedToken customizedToken = new CustomizedToken(username, password, ADMIN_LOGIN_TYPE);
		//暂时指定为false，方便测试
		customizedToken.setRememberMe(false);
		try {
			currentUser.login(customizedToken);
			return "admin/index";
		} catch (IncorrectCredentialsException ice) {
			System.out.println("登陆失败：用户名/密码不匹配！");
		} catch (LockedAccountException lae) {
			System.out.println("登陆失败：账户已被冻结！");
		} catch (AuthenticationException ae) {
			System.out.println(ae.getMessage());
		}
		return "redirect:/login.jsp";
	}

}
