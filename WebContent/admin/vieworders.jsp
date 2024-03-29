<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.vo.TypeVO"%>
<%@ page import="cn.cakeonline.vo.Orders"%>
<%@ page import="cn.cakeonline.dao.OrdersDAO"%>
<%@ page import="cn.cakeonline.dao.OrdersGoodsDAO"%>
<%
	if (session.getAttribute("admin") != null) {
		OrdersDAO dao = new OrdersDAO();
		ArrayList<Orders> list = dao.getAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有订单</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
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
<table class="order_list">
	<tr>
		<th>&nbsp;</th>
		<th>订单号</th>
		<th>用户ID</th>
		<th>下单时间</th>
		<th>商品数</th>
		<th>总金额</th>
		<th>操作</th>
	</tr>
	<%
		for (int i = 0; i < list.size(); i++) {
			Orders o = list.get(i);
	%>
	<tr>
		<td>&nbsp;</td>
		<td><%=o.getOrder_id()%></td>
		<td><%=o.getUser_id()%></td>
		<td><%=o.getOrder_time()%></td>
		<td><%=o.getGoods_num()%></td>
		<td><%=o.getCheckout()%></td>
		<td></td>
	</tr>
	<%
		}
	%>
</table>
</div>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>