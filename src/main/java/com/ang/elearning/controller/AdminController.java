package com.ang.elearning.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.po.Role;
import com.ang.elearning.po.User;
import com.ang.elearning.service.IRoleService;
import com.ang.elearning.service.IUserService;
import com.ang.elearning.shiro.CustomizedToken;
import com.ang.elearning.shiro.LoginType;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final String ADMIN_LOGIN_TYPE = LoginType.ADMIN.toString();

	@Resource
	private IUserService userService;

	@Resource
	private IRoleService roleService;

	@ModelAttribute
	public void getUserById(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map) {
		if (id != null)
			map.put("user", userService.getUserById(id));
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
		Subject currentUser = SecurityUtils.getSubject();
		// 指明登录类型为管理员登录(在授权时使用)
		currentUser.getSession().setAttribute("loginType", ADMIN_LOGIN_TYPE);
		CustomizedToken customizedToken = new CustomizedToken(username, password, ADMIN_LOGIN_TYPE);
		// 暂时指定为false，方便测试
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

	@RequestMapping(value = "/users")
	public ModelAndView listUser() {
		ModelAndView modelAndView = new ModelAndView("admin/listUser");
		List<User> users = userService.getAllUsers();
		modelAndView.addObject("users", users);
		return modelAndView;
	}

	@RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
	public String deleteUser(@PathVariable("id") Integer id) {
		userService.deleteUserById(id);
		return "redirect:/admin/users";
	}

	@RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("admin/editUser");
		List<Role> roles = roleService.getAllRoles();
		modelAndView.addObject("roles", roles);
		modelAndView.addObject("user", userService.getUserById(id));
		return modelAndView;
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.PUT)
	public String updateUser(User user) {
		userService.updateUser(user);
		return "redirect:/admin/users";
	}

}
