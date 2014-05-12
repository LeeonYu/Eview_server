<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EviewStore</title>
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-color: #42413C;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ 元素/标签选择器 ~~ */
ul, ol, dl { /* 由于浏览器之间的差异，最佳做法是在列表中将填充和边距都设置为零。为了保持一致，您可以在此处指定需要的数值，也可以在列表所包含的列表项（LI、DT 和 DD）中指定需要的数值。请注意，除非编写一个更为具体的选择器，否则您在此处进行的设置将会层叠到 .nav 列表。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 删除上边距可以解决边距会超出其包含的 div 的问题。剩余的下边距可以使 div 与后面的任何元素保持一定距离。 */
	padding-right: 15px;
	padding-left: 15px; /* 向 div 内的元素侧边（而不是 div 自身）添加填充可避免使用任何方框模型数学。此外，也可将具有侧边填充的嵌套 div 用作替代方法。 */
}
a img { /* 此选择器将删除某些浏览器中显示在图像周围的默认蓝色边框（当该图像包含在链接中时） */
	border: none;
}
/* ~~ 站点链接的样式必须保持此顺序，包括用于创建悬停效果的选择器组在内。 ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* 除非将链接设置成极为独特的外观样式，否则最好提供下划线，以便可从视觉上快速识别 */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 此组选择器将为键盘导航者提供与鼠标使用者相同的悬停体验。 */
	text-decoration: none;
}

/* ~~ 此固定宽度容器包含其它 div ~~ */
.container {
	width: 960px;
	background-color: #FFF;
	margin: 0 auto; /* 侧边的自动值与宽度结合使用，可以将布局居中对齐 */
}

/* ~~ 标题未指定宽度。它将扩展到布局的完整宽度。标题包含一个图像占位符，该占位符应替换为您自己的链接徽标 ~~ */
.header {
	background-color: #ADB96E;
}

/* ~~ 这是布局信息。 ~~ 

1) 填充只会放置于 div 的顶部和/或底部。此 div 中的元素侧边会有填充。这样，您可以避免使用任何“方框模型数学”。请注意，如果向 div 自身添加任何侧边填充或边框，这些侧边填充或边框将与您定义的宽度相加，得出 *总计* 宽度。您也可以选择删除 div 中的元素的填充，并在该元素中另外放置一个没有任何宽度但具有设计所需填充的 div。

*/

.content {

	padding: 10px 0;
}

/* ~~ 脚注 ~~ */
.footer {
	padding: 10px 0;
	background-color: #CCC49F;
}
.footer h2 {width:100%; overflow:hidden; padding-top:20px; text-align:center; font-size:16px; line-height:25px; display:block; color:#888888; font-weight:normal;}
/* ~~ 其它浮动/清除类 ~~ */
.fltrt {  /* 此类可用于在页面中使元素向右浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 此类可用于在页面中使元素向左浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 如果从 #container 中删除或移出了 #footer，则可以将此类放置在 <br /> 或空 div 中，作为 #container 内最后一个浮动 div 之后的最终元素 */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
.menu {width:100%; overflow:hidden; background-color:#1376c4;}
.menu ul{width:100%; overflow:hidden; padding-bottom:6px;}
.menu ul li { float:left; width:20%; margin-left:0; text-align:center; padding-top:4px;}
.menu ul li a{width:auto; overflow:hidden; color:#FFF; font-size:15px; padding-top:4px; font-weight:bold; text-decoration:none; line-height:20px; text-align:center;}
.menu ul li a:hover {color:#FFF; text-decoration:underline;}
.name {width:100%; height:34px; background-color:#e8effc; border-top:1px solid #c4cbd5; border-bottom:1px solid #bbd6f3;}
.name h1 {width:auto; height:24px; font-size:16px; color:#033184; display:block; line-height:26px; float:left; padding-left:10px; padding-top:4px;}
.name h1 span {color:#000000; }
.name h2 {width:auto; font-size:16px; color:#111; overflow:hidden; float:right; display:block; margin-right:6px; padding-top:3px; font-weight:normal; line-height:26px;}
.name h2 a,.name h1 a {font-size:16px; color:#033184; line-height:26px; text-decoration:none;}
.name h2 a:hover,.name h1 a:hover {color:#8a158a;}
.name h1 a.cur{color:#111;}
.contentN {width:100%; overflow:hidden;}
.pic {width:105px; padding-bottom:2px; display:block; background-color:#dddddd; float:left; text-align:center; margin-top:10px; margin-left:2%; overflow:hidden;}
.pic span {width:101px;  margin-left:auto; margin-right:auto; padding-top:2px; padding-bottom:2px; overflow:hidden; display:block;}
.pic a {color:#033184; font-size:14px; text-decoration:none;}
.pic a:hover {color:#8a158a;}
.contentC {overflow:hidden;}
.contentC ul{width:100%; overflow:hidden; display:block; margin-left:auto; margin-right:auto;}
.contentC ul li{width:97%; height:30px; display:block; margin-left:auto; margin-right:auto; border-bottom:1px solid #e9e9e9; padding-top:10px;}
.contentC ul li a {font-size:16px; color:#033184; font-weight:normal; text-decoration:none;}
.contentC ul li a:hover {color:#8a158a;}
.contentC ul li.end, .content ul li.end, .top.end{border-bottom:0;}


-->
</style></head>

<body>

<div class="container">
  <div class="header"><a href="#"><img src="../My Documents/logo.png" alt="在此处插入徽标" name="Insert_logo" width="180" height="90" id="Insert_logo" style="background-color: #C6D580; display:block;" /></a> 
    <!-- end .header --></div>
        <div class="menu">
    <ul>
        <li><a >首页</a></li>
        <li><a>分类1</a></li>
        <li><a>分类2</a></li>
        <li><a>分类3</a></li>
	</ul>
	</div>
  <div class="content">
    <div class="name nameSkin">
        <h1>[<a>分类标题1</a>]</h1>
</div>
<div class="contentN">
    <div class="pic">
     <a><span><img width="75" height="100" alt="" src="../My Documents/cover1.jpg" style="width: 101px; height: 126px;"></span>图片标题1</a>
                    </div>
                <div class="contentC">
                    <ul>
                        <li><a></a></li>
                    <li><a ></a></li>
                    <li><a></a></li>
                        <li class="end"><a></a></li>
                    </ul>
                </div>
    </div>
    
        <div class="name nameSkin">
        <h1>[<a>分类标题2</a>]</h1>
</div>
<div class="contentN">
    <div class="pic">
     <a><span><img width="75" height="100" alt="" src="../My Documents/cover1.jpg" style="width: 101px; height: 126px;"></span>图片标题2</a>
                    </div>
                <div class="contentC">
                    <ul>
                        <li><a></a></li>
                    <li><a ></a></li>
                    <li><a></a></li>
                        <li class="end"><a></a></li>
                    </ul>
                </div>
    </div>
    <!-- end .content -->
   </div>
    <div class="name nameSkin">
        <h1>[<a>分类标题3</a>]</h1>
</div>
<div class="contentN">
    <div class="pic">
     <a><span><img width="75" height="100" alt="" src="../My Documents/cover1.jpg" style="width: 101px; height: 126px;"></span>图片标题3</a>
                    </div>
                <div class="contentC">
                    <ul>
                        <li><a></a></li>
                    <li><a ></a></li>
                    <li><a></a></li>
                        <li class="end"><a></a></li>
                    </ul>
                </div>
    </div>
  <div class="footer">
    <h2 >©2013-2014  易看移动阅读</h2>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>