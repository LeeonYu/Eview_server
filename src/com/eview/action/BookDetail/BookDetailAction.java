package com.eview.action.BookDetail;

import java.util.List;

import com.eview.services.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class BookDetailAction extends ActionSupport{

	
	private BookService bookService;
	private List bookdetail;
	private int book_id;
	
	private String Bname;
	private String Writer;
	private String Kind;
	private String Url;
	private String Info;
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	
	public void getBname(){
		
	}
	public void getWriter(){
		
	}
	public void getKind(){
		
	}
	public void getUrl(){
		
	}
	public void getInfo(){
		
	}
	public void BD(){
		
	}
	
	
	public String execute() {
		BD();
		
		return SUCCESS;
	}
}
