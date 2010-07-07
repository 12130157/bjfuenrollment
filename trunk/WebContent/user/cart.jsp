<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.OrdersGoods"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
</head>
<body>
<%
	ArrayList<OrdersGoods> li = null;
	if (session.getAttribute("cartlist") != null) {
		li = (ArrayList<OrdersGoods>) session.getAttribute("cartlist");
	}
%>
<ul>
	<%
		if (li != null) {
			for (int i = 0; i < li.size(); i++) {
				OrdersGoods og = li.get(i);
	%>
	<li></li>
	<%
		}
		}
	%>
</ul>
<a href="user/makeorder.do">确认订单</a>
</body>
</html>