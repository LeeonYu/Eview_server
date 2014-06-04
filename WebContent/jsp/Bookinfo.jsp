<%@page import="org.apache.struts2.components.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书本详情</title>
</head>

<body>
<div class="webPage">
  <div class="top topSkin">
    <h1><img src="logo.lnk" alt="logo" width="129" height="59"/></h1>

  </div>
  <div class="menu">
    <ul>
      <li><a href="">首页</a></li>
    </ul>
  </div>
  <div class="name nameSkin">
    <h1></h1>
  </div>
  <div class="contentN">
    <div class="pic1"><span class="cover"><img style="width: 101px; height: 126px;" src="" alt="img"/></span></div>
    <div class="contentD mt10">
      <ul>
	    <li class="bname"></li>
        <li class="writer">作者：</li>
        <li class="kind">类别：<a href=""></a></li>
        <li><br/>
        </li>
        <li class="download"><a href="">【<font color="#FF0000">马上下载</font>】</a></li>
      </ul>
    </div>
  </div>
  <div class="articleDes be9e9e9">
    <h1>简介</h1><br /><br />
	<h2  class="bookdetail"></h2>
  </div>


  <div class="btm btmSkin"><a href="#top"><img src="http://file.qidian.cn:81/sndabook/images/TOPBtn.gif" /></a></div>
  <br/>
  <br/>
  <div class="menu"> </div>
  <div class="bottom">
    <h2> ©2013-2014  尼玛移动阅读 </h2>
  </div>
</div>
</body>
</html>