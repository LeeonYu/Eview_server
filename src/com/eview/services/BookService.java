package com.eview.services;

import com.eview.dao.hibernate.Book;
import com.eview.dao.hibernate.BookDao;
import com.eview.service.impl.BookServiceImpl;

public class BookService implements BookServiceImpl{
	
	private BookDao bookdao;
	
	public void showAllbook(){
		bookdao.findAllBook();
	}
	
	public void showKindbook(Book book){
		bookdao.sortByKind(book);
	}
}
