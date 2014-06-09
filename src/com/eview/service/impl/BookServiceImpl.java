package com.eview.service.impl;

import java.util.List;

import com.eview.dao.hibernate.Book;

public interface BookServiceImpl {

	List showAllbook();
	List showKindbook(String kind);
}
