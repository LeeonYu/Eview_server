package com.eview.dao.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDao extends HibernateDaoSupport{
	
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);
	}
	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		String sql = "from logininfo UserName order by logininfo.id desc";
		return (List<User>) this.getHibernateTemplate().find(sql);
	}
	public void removeUser(User user) {
		this.getHibernateTemplate().delete(user);
	}
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}
	public User findUserById(Integer id) {
		User user = (User) this.getHibernateTemplate().get(User.class, id);

		return user;
	}
	@SuppressWarnings("unchecked")
	public User loginUser(User user) {
		String sql = "from logininfo UserName where user.username='"
				+ user.getName() + "' and user.password='"
				+ user.getPwd() + "'";
		List<User> users = (List<User>) this.getHibernateTemplate().find(sql);
		if (users.size() > 0) {
			return users.get(0);
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
			String queryString = "from logininfo";
			List<User> list =this.getHibernateTemplate().find(queryString);
			return list;
	}
	public void Reg(User user) {
		// TODO Auto-generated method stub
		
	}
}
