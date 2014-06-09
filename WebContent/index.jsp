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
@CHARSET "UTF-8";
<style type="text/css">
/*-------------------All Property Reset -------------------------------*/

* {
	margin: 0;
	padding: 0;
}
img {
	border: none;
}
ul li {
	list-style: none;
}
.clear {
	clear: both;
	font-size: 0;
	display: block;
	height: 0;
}
.clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}/*For FireFox clear float*/
.clearfix {
*zoom:1;
}/* Only IE */
body {
	font-size: 13px;
	margin: 0 auto;
	width: 100%;
}
.floatLeft {
	float: left;
}
.floatRight {
	float: right;
}
.off {
	display: none;
}
.on {
	display: block;
}
.hidden {
	visibility: hidden;
}
.visible {
	visibility: visible;
}
.mr10 {
	margin-right: 10px;
}
.mr20 {
	margin-right: 20px;
}
.mt10 {
	margin-top: 10px;
}
.ti32 {
	text-indent: 32px;
}
.tar {
	text-align: right;
}
.tac {
	text-align: center;
}
.be9e9e9 {
	border-bottom: 1px solid #e9e9e9;
}
.bte9e9e9 {
	border-top: 1px solid #e9e9e9;
}
.bgfff7df {
	background: #fff7df;
}
.btfef3d1 {
	border-top: #fef3d1 solid 1px;
}
.bffe5c0 {
	border-bottom: #ffe5c0 solid 1px;
}
.ffa128 {
	color: #ffa128;
}
/*--------------Web Layout Style---------------------*/
.webPage {
	width: 100%;
	overflow: hidden;
	margin-left: auto;
	margin-right: auto;
}
.top {
	width: 100%;
	height: 80px;
	border-top: 1px solid #b0c7f4;
	border-bottom: 1px solid #adc3d6;
}
.top h1 {
	width: 130px;
	height: 63px;
	float: left;
	display: block;
	margin-left: 0px;
	margin-top: 16px;
}
.top h2 {
	width: auto;
	overflow: hidden;
	float: right;
	display: block;
	margin-top: 30px;
	line-height: 22px;
	font-size: 16px;
	margin-right: 6px;
}
.top h2 a {
	color: #033184;
	text-decoration: none;
	font-size: 15px;
}
.top h2 a:hover {
	color: #8a158a;
}
.search {
	width: 100%;
	border-top: 3px solid #83a4c2;
	border-bottom: 3px solid #a4b3c3;
	background-color: #e2e8f4;
}
.search ul {
	width: 97%;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.search ul li {
	width: 100%;
	line-height: 25px;
	display: block;
	font-size: 16px;
	padding: 5px 0;
}
.search ul li a {
	text-decoration: none;
	font-size: 16px;
	margin-right: 10px;
	color: #033184;
}
.search ul li a:hover {
	color: #8a158a;
}
.page {
	width: 100%;
}
.page ul {
	width: 97%;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.page ul li {
	width: 100%;
	line-height: 25px;
	display: block;
	font-size: 16px;
	padding-top: 10px;
	text-align: center
}
.page ul li a {
	text-decoration: none;
	font-size: 16px;
	margin-right: 10px;
	color: #033184;
}
.page ul li a.cur {
	color: #c81e1e;
}
.page ul li a:hover {
	color: #8a158a;
}
.page ul li input.iptxt {
	width: 30px;
}
.menu {
	width: 100%;
	overflow: hidden;
	background-color: #1376c4;
}
.menu ul {
	width: 100%;
	overflow: hidden;
	padding-bottom: 6px;
}
.menu ul li {
	float: left;
	width: 20%;
	margin-left: 0;
	text-align: center;
	padding-top: 4px;
}
.menu ul li a {
	width: auto;
	overflow: hidden;
	color: #FFF;
	font-size: 15px;
	padding-top: 4px;
	font-weight: bold;
	text-decoration: none;
	line-height: 20px;
	text-align: center;
}
.menu ul li a:hover {
	color: #FFF;
	text-decoration: underline;
}
.menu4 {
	width: 100%;
	overflow: hidden;
	background-color: #1376c4;
}
.menu4 ul {
	width: 100%;
	overflow: hidden;
	padding-bottom: 6px;
}
.menu4 ul li {
	float: left;
	width: 25%;
	margin-left: 0;
	text-align: center;
	padding-top: 4px;
}
.menu4 ul li a {
	width: auto;
	overflow: hidden;
	color: #FFF;
	font-size: 15px;
	padding-top: 4px;
	font-weight: bold;
	text-decoration: none;
	line-height: 20px;
	text-align: center;
}
.menu4 ul li a:hover {
	color: #FFF;
	text-decoration: underline;
}
.title {
	width: 100%;
	height: 52px;
}
.title h1 {
	width: 52px;
	height: 52px;
	display: block;
	float: left;
}
.title h2 {
	width: auto;
	height: 35px;
	display: block;
	float: left;
	padding-top: 17px;
	line-height: 20px;
}
.title h2 a {
	color: #033184;
	font-size: 16px;
	text-decoration: none;
	line-height: 20px;
	font-weight: normal;
}
.name {
	width: 100%;
	height: 34px;
	background-color: #e8effc;
	border-top: 1px solid #c4cbd5;
	border-bottom: 1px solid #bbd6f3;
}
.name h1 {
	width: auto;
	height: 24px;
	font-size: 16px;
	color: #033184;
	display: block;
	line-height: 26px;
	float: left;
	padding-left: 10px;
	padding-top: 4px;
}
.name h1 span {
	color: #000000;
}
.name h2 {
	width: auto;
	font-size: 16px;
	color: #111;
	overflow: hidden;
	float: right;
	display: block;
	margin-right: 6px;
	padding-top: 3px;
	font-weight: normal;
	line-height: 26px;
}
.name h2 a, .name h1 a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
.name h2 a:hover, .name h1 a:hover {
	color: #8a158a;
}
.name h1 a.cur {
	color: #111;
}
.name3 {
	width: 100%;
	height: 34px;
	background-color: #fff;
	border-bottom: 1px solid #e9e9e9;
}
.name3 h1 {
	width: auto;
	height: 24px;
	font-size: 16px;
	color: #033184;
	display: block;
	line-height: 26px;
	float: left;
	padding-left: 10px;
	padding-top: 4px;
}
.name3 h2 {
	width: auto;
	font-size: 16px;
	color: #111;
	overflow: hidden;
	float: right;
	display: block;
	margin-right: 6px;
	padding-top: 3px;
	font-weight: normal;
	line-height: 26px;
}
.name3 h2 a, .name3 h1 a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
.name3 h2 a:hover, .name3 h1 a:hover {
	color: #8a158a;
}
.name3 h1 a.cur {
	color: #111;
}
.name1 {
	width: 100%;
	height: 34px;
	background-color: #fff7df;
	border-top: 1px solid #fef3d1;
	border-bottom: 1px solid #ffe5c0;
}
.name1 h1 {
	width: auto;
	height: 24px;
	font-size: 16px;
	color: #033184;
	display: block;
	line-height: 26px;
	float: left;
	padding-left: 10px;
	padding-top: 4px;
}
.name1 h2 {
	width: auto;
	font-size: 16px;
	color: #111;
	overflow: hidden;
	float: right;
	display: block;
	margin-right: 6px;
	padding-top: 3px;
	font-weight: normal;
	line-height: 26px;
}
.name1 h2 a, .name1 h1 a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
.name1 h2 a:hover, .name1 h1 a:hover {
	color: #8a158a;
}
.name1 h1 a.cur {
	color: #111;
}
.contentN {
	width: 100%;
	overflow: hidden;
}
.pic {
	width: 105px;
	padding-bottom: 2px;
	display: block;
	background-color: #dddddd;
	float: left;
	text-align: center;
	margin-top: 10px;
	margin-left: 2%;
	overflow: hidden;
}
.pic span {
	width: 101px;
	margin-left: auto;
	margin-right: auto;
	padding-top: 2px;
	padding-bottom: 2px;
	overflow: hidden;
	display: block;
}
.pic a {
	color: #033184;
	font-size: 14px;
	text-decoration: none;
}
.pic a:hover {
	color: #8a158a;
}
.pic1 {
	width: 105px;
	height: 130px;
	display: block;
	background-color: #dddddd;
	float: left;
	text-align: center;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 2%;
	overflow: hidden;
}
.pic1 span {
	width: 101px;
	height: 126px;
	margin-left: auto;
	margin-right: auto;
	padding-top: 2px;
	padding-bottom: 2px;
	overflow: hidden;
	display: block;
}
.pic1 a {
	color: #033184;
	font-size: 14px;
	text-decoration: none;
}
.pic1 a:hover {
	color: #8a158a;
}
.contentC {
	overflow: hidden;
}
.contentC ul {
	width: 100%;
	overflow: hidden;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.contentC ul li {
	width: 97%;
	height: 30px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-bottom: 1px solid #e9e9e9;
	padding-top: 10px;
}
.contentC ul li a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.contentC ul li a:hover {
	color: #8a158a;
}
.contentC ul li.end, .content ul li.end, .top.end {
	border-bottom: 0;
}
.contentD {
	overflow: hidden;
}
.contentD ul {
	width: 100%;
	overflow: hidden;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.contentD ul li {
	width: 97%;
	font-size: 16px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	line-height: 20px;
	padding-top: 5px;
}
.contentD ul li h1 {
	width: auto;
	overflow: hidden;
	display: block;
	padding: 4px 5px 0px 5px;
	line-height: 20px;
	color: #c0cbe0;
	text-decoration: none;
}
.contentD ul li h1 a {
	font-size: 18px;
}
.contentD ul li a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.contentD ul li a:hover {
	color: #8a158a;
}
.content {
	width: 100%;
	overflow: hidden;
}
.content ul {
	width: 100%;
	display: block;
}
.content ul li {
	width: 100%;
	height: 42px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-bottom: 1px solid #e9e9e9;
}
.content ul li span {
	width: 94%;
	height: 25px;
	font-size: 16px;
	margin-left: auto;
	margin-right: auto;
	display: block;
	padding-top: 11px;
}
.content ul li span a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content ul li span a:hover {
	color: #8a158a;
}
.content ul li span a.cur {
	color: #111;
}
.content ul li h1 {
	width: auto;
	float: left;
	overflow: hidden;
	display: block;
	padding: 4px 5px 0px 5px;
	line-height: 20px;
	color: #c0cbe0;
	text-decoration: none;
}
.content ul li h2 {
	width: auto;
	float: left;
	height: 20px;
	display: block;
	padding-top: 6px;
	line-height: 20px;
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content ul li h2 a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content ul li h2 a:hover {
	color: #8a158a;
}
.articleDes {
	width: 100%;
	overflow: hidden;
	padding-bottom: 10px;
}
.articleDes h1 {
	width: auto;
	float: left;
	overflow: hidden;
	display: block;
	padding: 8px 5px 0px 5px;
	line-height: 26px;
	color: #c0cbe0;
	text-decoration: none;
}
.articleDes h2, .articleDes p {
	width: auto;
	font-size: 16px;
	color: #111;
	display: block;
	line-height: 26px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 4px;
	font-weight: normal;
}
.articleDes h3 {
	width: auto;
	font-size: 16px;
	display: block;
	line-height: 26px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 4px;
	font-weight: normal;
	color: #033184;
}
.articleDes h4 {
	width: auto;
	font-size: 16px;
	display: block;
	line-height: 26px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 4px;
	font-weight: normal;
	color: #033184;
	TEXT-ALIGN: center;
}
.articleDes h2 a, .articleDes p a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
.articleDes h2 a:hover, .articleDes p:hover {
	color: #8a158a;
}
.menuDes h1 {
	width: auto;
	float: left;
	overflow: hidden;
	display: block;
	padding: 8px 5px 0px 5px;
	line-height: 26px;
	color: #111;
	text-decoration: none;
}
.menuDes h2 {
	width: auto;
	font-size: 16px;
	color: #111;
	display: block;
	line-height: 26px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 4px;
	font-weight: normal;
}
.menuDes h2 a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
.menuDes h2 a:hover {
	color: #8a158a;
}
.notice {
	width: 100%;
	overflow: hidden
}
.notice span {
	width: 94%;
	color: #888;
	font-size: 16px;
	line-height: 24px;
	padding: 5px 0;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.content1 {
	width: 100%;
	overflow: hidden;
}
.content1 ul {
	width: 100%;
	display: block;
}
.content1 ul li {
	width: 100%;
	height: 42px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-top: 1px solid #e9e9e9;
}
.content1 ul li span {
	width: 98%;
	height: 30px;
	margin-left: auto;
	margin-right: auto;
	display: block;
	padding-top: 6px;
}
.content1 ul li span a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content1 ul li span a:hover {
	color: #8a158a;
}
.content1 ul li h1 {
	width: auto;
	float: left;
	overflow: hidden;
	display: block;
	padding: 8px 5px 0px 5px;
	line-height: 20px;
	color: #c0cbe0;
	text-decoration: none;
}
.content1 ul li h2 {
	width: auto;
	float: left;
	height: 20px;
	display: block;
	padding-top: 10px;
	line-height: 20px;
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content1 ul li h2 a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content1 ul li h2 a:hover {
	color: #8a158a;
}
.content1 ul li h2 a.cur, .articleDes h2 a.cur, .name h2 a.cur {
	color: #c81e1e;
}
.content2 {
	width: 100%;
	overflow: hidden;
}
.content2 ul {
	width: 100%;
	display: block;
}
.content2 ul li {
	width: 100%;
	height: 42px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-top: 1px solid #e9e9e9;
}
.content2 ul li span {
	width: 94%;
	height: 30px;
	display: block;
	padding-top: 9px;
	margin-left: auto;
	margin-right: auto;
}
.content2 ul li span a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content2 ul li span a:hover {
	color: #8a158a;
}
.content3 {
	width: 100%;
	overflow: hidden;
}
.content3 ul {
	width: 100%;
	display: block;
}
.content3 ul li {
	width: 100%;
	height: 42px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-top: 1px solid #e9e9e9;
}
.content3 ul li span {
	width: 47%;
	height: 30px;
	display: block;
	padding-top: 9px;
	float: left;
	margin-left: 3%;
	margin-right: auto;
}
.content3 ul li span a {
	font-size: 16px;
	color: #033184;
	font-weight: normal;
	text-decoration: none;
}
.content3 ul li span a:hover {
	color: #8a158a;
}
.btop0 {
	border-top: 0
}
.bbottom0 {
	border-top: 0
}
.btm {
	width: 100%;
	height: 40px;
	text-align: center;
	padding-top: 18px;
}
.bottom {
	width: 100%;
	height: 151px;
	border-top: 1px solid #86a6c3;
}
.bottom h1 {
	width: 100%;
	overflow: hidden;
	padding-top: 20px;
	text-align: center;
	font-size: 16px;
	line-height: 25px;
	display: block;
	color: #888888;
	font-weight: normal;
}
.bottom h1 a {
	font-size: 16px;
	font-weight: bold;
	color: #033184;
	text-decoration: none;
}
.bottom h1 a:hover {
	color: #8a158a;
}
.bottom h1 span a {
	font-size: 16px;
	font-weight: bold;
	color: #888888;
	text-decoration: none;
}
.bottom h1 span a:hover {
	color: #8a158a;
}
.bottom h2 {
	width: 100%;
	overflow: hidden;
	padding-top: 10px;
	text-align: center;
	font-size: 16px;
	line-height: 25px;
	display: block;
	color: #888888;
	font-weight: normal;
}
.bottom h2 a {
	font-size: 16px;
	font-weight: bold;
	color: #033184;
	text-decoration: none;
}
.bottom h2 a:hover {
	color: #8a158a;
}
.topTxt {
	width: 100%;
	height: 70px;
	background-color: #e3e9f4;
}
.topTxt ul {
	width: 97%;
	height: 70px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.topTxt ul li {
	width: 100%;
	height: 25px;
	display: block;
	font-size: 16px;
	padding-top: 10px;
}
.topTxt ul li a {
	text-decoration: none;
	font-size: 16px;
	margin-right: 10px;
	color: #033184;
}
.topTxt ul li a:hover {
	color: #8a158a;
}
.topTxt1 {
	width: 100%;
	height: 50px;
	background-color: #e3e9f4;
}
.topTxt1 ul {
	width: 97%;
	height: 50px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.topTxt1 ul li {
	width: 100%;
	height: 25px;
	display: block;
	font-size: 16px;
	padding-top: 10px;
}
.topTxt1 ul li a {
	text-decoration: none;
	font-size: 16px;
	margin-right: 10px;
	color: #033184;
}
.topTxt1 ul li a:hover {
	color: #8a158a;
}
.topTitle {
	width: 100%;
	height: 34px;
}
.topTitle h1 {
	width: auto;
	font-size: 16px;
	color: #111;
	overflow: hidden;
	float: left;
	display: block;
	margin-right: 6px;
	padding-top: 3px;
	padding-left: 10px;
	font-weight: normal;
	line-height: 26px;
}
.topTitle h2 {
	width: auto;
	font-size: 16px;
	color: #111;
	overflow: hidden;
	float: right;
	display: block;
	margin-right: 6px;
	padding-top: 3px;
	font-weight: normal;
	line-height: 26px;
}
.topTitle h2 a, h1 a {
	font-size: 16px;
	color: #033184;
	line-height: 26px;
	text-decoration: none;
}
/*----------Mouse Shape--------------*/
.cursor {
	cursor: pointer;
}
/*-------------Skin----------------------*/
.btmSkin {
	background-image: url(http://file.qidian.cn:81/sndabook/images/btmBg.gif);
}
.topSkin {
	background-image: url(http://file.qidian.cn:81/sndabook/images/topBg.gif);
}
.nameSkin {
	background-image: url(http://file.qidian.cn:81/sndabook/images/bgTitle1x34.gif);
}
.c_search_t_keyword {
	width: 95px;
	height: 18px;
	line-height: 18px;
	padding: 0 2px;
	border: #acacac 1px solid;
}
</style>
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
<s:iterator>
   <tr>
   <td>
<s:a href="/Bookinfo.jsp">
<s:param name="book_id" value="%{bookinfo.id}"  />
<s:text name="%{bookinfo.Bname}"></</s:text>
</s:a>
  </td>
  </tr>
</s:iterator>
  </div>
</div>
<div class="name nameSkin">
  <h1>[<span>分类1</span>]</h1>
</div>
<div class="contentN">
  <div class="pic"> <a href=""><span><img width="101px" height="126px" alt="" src="" style="width: 101px; height: 126px;"/></span></a> </div>
  <div class="contentC">
    <ul>
    <s:iterator value="bookinfo" var="bookinfo">
      <li><span><a href="${bookinfo.url}">${bookinfo.Bname}<s:param name="book_id" value="${bookinfo.id}"/></a></span></li>
      </s:iterator>
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