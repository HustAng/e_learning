package com.ang.elearning.filter;

import java.io.Serializable;
import java.util.Deque;
import java.util.LinkedList;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.DefaultSessionKey;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;

public class KickoutFilter extends AccessControlFilter {

	// 被踢出后重定向到的地址
	private String kickoutUrl;
	// 踢出先登录的用户还是后登录的用户，默认踢出先登录的用户
	private boolean kickoutAfter = false;
	// 同一个账号允许同时登录的最大用户数，默认为1
	private int maxSession = 1;

	// 用于保存 账号——已登录用户的会话 的缓存
	private Cache<String, Deque<Serializable>> cache;
	// 用于根据会话ID，获取会话进行踢出操作
	private SessionManager sessionManager;

	public void setKickoutUrl(String kickoutUrl) {
		this.kickoutUrl = kickoutUrl;
	}

	public void setKickoutAfter(boolean kickoutAfter) {
		this.kickoutAfter = kickoutAfter;
	}

	public void setMaxSession(int maxSession) {
		this.maxSession = maxSession;
	}

	public void setCacheManager(CacheManager cacheManager) {
		this.cache = cacheManager.getCache("shiro-kickout-session");
	}

	public void setSessionManager(SessionManager sessionManager) {
		this.sessionManager = sessionManager;
	}

	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		return false;
	}

	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		Subject subject = getSubject(request, response);
		// 如果没有验证，直接进入后面的流程
		if (!subject.isAuthenticated() && !subject.isRemembered()) {
			return true;
		}

		Session session = subject.getSession();
		String email = (String) subject.getPrincipal();
		Serializable sessionId = session.getId();

		Deque<Serializable> deque = cache.get(email);
		if (deque == null) {
			deque = new LinkedList<Serializable>();
			cache.put(email, deque);
		}

		// 如果队列中没有此sessionId，并且此用户没有被踢出，则放入队列
		if (!deque.contains(sessionId) && session.getAttribute("kickout") == null) {
			// LinkedList.push在第一个位置添加
			deque.push(sessionId);
		}

		// 如果队列中的会话数超过允许的最大会话数，开始踢人
		while (deque.size() > maxSession) {
			Serializable kickoutSessionId = null;
			// 移除后者
			if (kickoutAfter == true) {
				kickoutSessionId = deque.removeFirst();
			}
			// 移除前者
			else {
				kickoutSessionId = deque.removeLast();
			}
			Session kickoutSession = sessionManager.getSession(new DefaultSessionKey(kickoutSessionId));
			if (kickoutSession != null) {
				// 将kickoutSession的kickout属性设置为true表示已经踢出
				kickoutSession.setAttribute("kickout", true);
			}
		}
			// 如果当前用户被踢出，直接退出，并重定向到kickoutUrl
			if (session.getAttribute("kickout") != null) {
				subject.logout();
				saveRequest(request);
				WebUtils.issueRedirect(request, response, kickoutUrl);
				return false;
			}

		return true;
	}

}
