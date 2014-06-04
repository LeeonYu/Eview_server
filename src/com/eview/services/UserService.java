package com.eview.services;

import java.util.List;

import com.eview.dao.hibernate.User;
import com.eview.dao.hibernate.UserDao;
import com.eview.service.impl.UserServiceImpl;

public class UserService implements UserServiceImpl{
	UserDao userDao;
	
	public List<User> findAll(){
		return userDao.findAll();
	}
	
	public void Login(User user){
		userDao.loginUser(user);
	}


	public void Reg(User user) {
		userDao.Reg(user);
	}
	
}
