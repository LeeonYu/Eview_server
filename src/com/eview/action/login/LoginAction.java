package com.eview.action.login;

import java.util.Iterator;
import java.util.List;

import com.eview.dao.hibernate.User;
import com.eview.services.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	String username;
	String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String execute() {
		List<User> list = (List<User>) userService.findAll();
		User u = new User();
		Iterator<User> it = list.iterator();
		while (it.hasNext()) {
			u = (User) it.next();
			if (username.trim().equals(u.getName())
					&& password.trim().equals(u.getPwd()))
				return "success";
			else
				return "logerr";
		}
		String page = "logerr";
		return page;
	}

}
