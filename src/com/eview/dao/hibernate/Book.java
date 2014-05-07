package com.eview.dao.hibernate;

public class Book {

	private int id;
	private String Bname;
	private int Addtime;
	private String Url;
	private String Kind;

	public Book() {
	}

	public Book(int id, String Bname, int Addtime, String Url, String Kind) {
		this.id = id;
		this.Bname = Bname;
		this.Addtime = Addtime;
		this.Url = Url;
		this.Kind = Kind;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBname() {
		return Bname;
	}

	public void setBname(String bname) {
		Bname = bname;
	}

	public int getAddtime() {
		return Addtime;
	}

	public void setAddtime(int addtime) {
		Addtime = addtime;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}

	public String getKind() {
		return Kind;
	}

	public void setKind(String kind) {
		Kind = kind;
	}

}
