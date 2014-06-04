package com.eview.action.book;

import com.eview.services.BookService;
import com.eview.services.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	
	private BookService bookService;

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	public String execute() {
		return null;
	}
}
