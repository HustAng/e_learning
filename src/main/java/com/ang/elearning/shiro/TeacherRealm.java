package com.ang.elearning.shiro;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.ang.elearning.po.Role;
import com.ang.elearning.po.Teacher;
import com.ang.elearning.service.IRoleService;
import com.ang.elearning.service.ITeacherService;

public class TeacherRealm extends AuthorizingRealm {

	@Resource
	private ITeacherService teacherService;

	@Resource
	private IRoleService roleService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SimpleAuthorizationInfo info = null;
		// 获取当前登录类型
		String loginType = (String) SecurityUtils.getSubject().getSession().getAttribute("loginType");
		if (LoginType.TEACHER.toString().equals(loginType)) {
			String email = (String) principals.getPrimaryPrincipal();
			Teacher teacher = teacherService.getTeacherByEmail(email);
			Role role = roleService.getRoleByTeacher(teacher);
			Set<String> roles = new HashSet<>();
			roles.add(role.getName());
			info = new SimpleAuthorizationInfo(roles);
		}
		return info;

	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		Teacher teacher = null;
		// 1. 把AuthenticationToken转换为CustomizedToken
		CustomizedToken customizedToken = (CustomizedToken) token;
		// 2. 从CustomizedToken中获取email
		String email = customizedToken.getUsername();
		// 3. 若用户不存在，抛出UnknownAccountException异常
		teacher = teacherService.getTeacherByEmail(email);
		if (teacher == null)
			throw new UnknownAccountException("登陆失败：用户不存在！");
		// 4.
		// 根据用户的情况，来构建AuthenticationInfo对象并返回，通常使用的实现类为SimpleAuthenticationInfo
		// 以下信息从数据库中获取
		// （1）principal：认证的实体信息，可以是username，也可以是数据表对应的用户的实体类对象
		Object principal = email;
		// （2）credentials：密码
		Object credentials = teacher.getPassword();
		// （3）realmName：当前realm对象的name，调用父类的getName()方法即可
		String realmName = getName();
		// （4）盐值：取用户信息中唯一的字段来生成盐值，避免由于两个用户原始密码相同，加密后的密码也相同
		ByteSource credentialsSalt = ByteSource.Util.bytes(email);
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt,
				realmName);
		return info;
	}

}
