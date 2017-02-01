package com.ang.elearning.shiro;

//登录类型
//普通用户登录，教师登录，管理员登录
public enum LoginType {
	USER("User"), TEACHER("Teacher"), ADMIN("Admin");
	
	private String type;

	private LoginType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return this.type.toString();
	}
}
