<%@page import="org.apache.struts2.components.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>尼玛书城</title>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
<meta name="keywords" content="nima" />
<meta name="description" content="(nima.com)" />
<link href="/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<a name="top"></a>
<div class="webPage">
<div class="top topSkin">
  <h1><img src="../My Documents/未命名站点 2/logo.png" alt="logo" width="129" height="59"/></h1>
  <h2></h2>
</div>
<div class="menu">
  <ul>
    <li><a href="index.jsp">首页</a></li>
    <li><a action=>分类1</a></li>
    <li><a action=>分类2</a></li>
    <li><a action=>分类3</a></li>
    <li><a action=>分类4</a></li>
  </ul>
</div>
<div class="search">
<ul>
<li class="end">
  <form action= method="post">
    <input name="keywords" value="" class="c_search_t_keyword" type="text" />
    <input type="hidden"  name="mtd" value="bookSearch"/>
    <input type="submit" value="搜书"/>
  </form>
</li>
<div class="name nameSkin">
  <h1>[<span>分类精选</span>]</h1>
</div>
<div class="contentN">
  <div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
  <div class="contentC">
    <ul>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li class="end"><a href=""></a></li>
    </ul>
  </div>
</div>
<div class="name nameSkin">
  <h1>[<span>分类1</span>]</h1>
</div>
<div class="contentN">
  <div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
  <div class="contentC">
    <ul>
      <li><span><a href=""></a></span></li>
      <li><span><a href=""></a></span></li>
      <li><span><a href=""></a></span></li>
      <li><span><a href=""></a></span></li>
      <li><span><a href=""></a></span></li>
      <li class="end"><span><a href=""></a></span></li>
    </ul>
  </div>
</div>
<div class="name nameSkin">
  <h1>[<span>分类2</span>]</h1>
</div>
<div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
<div class="contentC">
  <ul>
    <li><span class="content1"><a href=""></a></span></li>
    <li><span class="content2"><a href=""></a></span></li>
    <li><span class="content3"><a href=""></a></span></li>
    <li><span class="content4"><a href=""></a></span></li>
    <li><span class="content5"><a href=""></a></span></li>
    <li class="end"><span><a href=""></a></span></li>
  </ul>
</div>
<div class="name nameSkin">
  <h1>[<span>分类3</span>]</h1>
</div>
<div class="contentN">
  <div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
  <div class="contentC">
    <ul>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li class="end"><a href=""></a></li>
    </ul>
  </div>
</div>
<div class="name nameSkin">
  <h1>[<span>分类4</span>]</h1>
</div>
<div class="contentN">
  <div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
  <div class="contentC">
    <ul>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li><a href=""></a></li>
      <li class="end"><a href=""></a></li>
    </ul>
  </div>
</div>
<div class="btm btmSkin"><a href="#top"><img src="http://file.qidian.cn:81/sndabook/images/TOPBtn.gif" /></a></div>
<br/>
<br/>
<div class="bottom">
  <h2> ©2013-2014  尼玛移动阅读 </h2>
</div>
</body>
</html>
</html>