package com.eview.service.impl;

import java.util.List;

import com.eview.dao.hibernate.User;


public interface UserServiceImpl {
	List<User> findAll();
	void Login(User user);

}
