package com.eview.action.bookkind;

import java.util.ArrayList;
import java.util.List;

import com.eview.services.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class BookkindAction extends ActionSupport{
	private BookService bookService;
	private List bookinfo;
	private String kind;

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	public void bookkind(String kind){
		bookinfo = new ArrayList<String>();
		bookinfo= bookService.showKindbook(kind);
	}

	public String execute() {
		bookkind(kind);
		return SUCCESS;
	}
}
