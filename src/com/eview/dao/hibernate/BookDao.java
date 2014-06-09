package com.eview.dao.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BookDao extends HibernateDaoSupport{

	public Book findUserById(Integer id) {
		Book book = (Book) this.getHibernateTemplate().get(Book.class, id);
		return book;
	}
	public List<Book> findAllBook() {
		String sql = "from Book book order by bookinfo.id desc";
		return (List<Book>) this.getHibernateTemplate().find(sql);
		
	}
	public List<Book> sortByKind(String kind){
		String sql = "from Book book order by 'kind'";
		return (List<Book>) this.getHibernateTemplate().find(sql);
	}
	public String findBname(int id){
		String sql ="form Book book order by 'id'";
		return null;
		
	}
	
}
