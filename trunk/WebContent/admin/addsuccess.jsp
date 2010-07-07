<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品添加成功</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<link href="../css/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
</head>
<body>
<div id="left_side">
<h4>管理员操作</h4>
<ul>
	<li><a href="gettypes.do">添加商品</a></li>
	<li><a href="viewusers.do">查看所有用户</a></li>
	<li><a href="vieworders.do">查看所有订单</a></li>
</ul>
</div>
<div id="main_content">
<h2 class="admin_tips">商品<span class="emphasis"><%=session.getAttribute("gname")%>添加成功！</span></h2>
</div>
</body>
</html>