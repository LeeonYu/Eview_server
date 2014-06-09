package com.eview.services;

import java.util.List;

import com.eview.dao.hibernate.Book;
import com.eview.dao.hibernate.BookDao;
import com.eview.service.impl.BookServiceImpl;

public class BookService implements BookServiceImpl{
	
	private BookDao bookdao;
	private String Bname;
	private String Writer;
	private String Kind;
	private String Url;
	private String Info;
	
	
	public List showAllbook(){
		return bookdao.findAllBook();
	}
	
	public List showKindbook(String kind){
		return bookdao.sortByKind(kind);
	}

	
	public String findBname(int id){
		
		return Bname;
		
	}


}
