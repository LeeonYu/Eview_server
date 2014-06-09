package com.eview.action.download;

import com.eview.services.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport{
	private BookService bookService;
	String fileName;
	
	
	public void getUrl(){
		
	}

	public String execute() {
		
		return SUCCESS;
	}
}
