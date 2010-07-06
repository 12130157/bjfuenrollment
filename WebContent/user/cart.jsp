<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.OrdersGoods" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
</head>
<body>
<% ArrayList<OrdersGoods> li = (ArrayList<OrdersGoods>) session.getAttribute("cartlist"); %>
<ul>
	<li></li>
</ul>
</body>
</html>