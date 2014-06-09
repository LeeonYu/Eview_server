package com.eview.action.book;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import org.springframework.web.servlet.ModelAndView;

import com.eview.services.BookService;
import com.eview.services.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	
	private BookService bookService;
	private List bookinfo;

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

    public void AddBook(){
    	bookinfo = new ArrayList<String>();
    	bookinfo= bookService.showAllbook();
    }
	
	public String execute() {
		AddBook();
		return SUCCESS;
	}
}
