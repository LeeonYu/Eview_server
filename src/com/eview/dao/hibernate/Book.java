package com.eview.dao.hibernate;

public class Book {

	private int id;
	private String Bname;
	private int Addtime;
	private String Url;
	private String Kind;
	private String Writer;
	private String info;

	public Book() {
	}

	public Book(int id, String Bname, int Addtime, String Url, String Kind,String Writer,String info) {
		this.id = id;
		this.Bname = Bname;
		this.Addtime = Addtime;
		this.Url = Url;
		this.Kind = Kind;
		this.Writer = Writer;
		this.info = info;
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

	public String getWriter() {
		return Writer;
	}

	public void setWriter(String writer) {
		Writer = writer;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
}
