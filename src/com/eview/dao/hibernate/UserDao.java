package com.eview.dao.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDao extends HibernateDaoSupport{
	
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);
	}
	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		String hql = "from User user order by logininfo.id desc";
		return (List<User>) this.getHibernateTemplate().find(hql);
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
		String hql = "from User user where logininfo.username='"
				+ user.getName() + "' and logininfo.password='"
				+ user.getPwd() + "'";
		List<User> users = (List<User>) this.getHibernateTemplate().find(hql);
		if (users.size() > 0) {
			return users.get(0);
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
			String queryString = "from User";
			List<User> list =this.getHibernateTemplate().find(queryString);
			return list;
	}
}
