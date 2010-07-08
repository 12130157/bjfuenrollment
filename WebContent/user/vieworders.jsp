<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.vo.TypeVO"%>
<%@ page import="cn.cakeonline.vo.Orders"%>
<%@ page import="cn.cakeonline.dao.OrdersDAO"%>
<%@ page import="cn.cakeonline.dao.OrdersGoodsDAO"%>
<%@ page import="cn.cakeonline.vo.UserVO"%>
<%
	UserVO user = null;
	if (session.getAttribute("user") != null) {
		user = (UserVO) session.getAttribute("user");
		OrdersDAO dao = new OrdersDAO();
		ArrayList<Orders> list = dao.getAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看我的订单</title>
</head>
<body>
<h3>我的订单</h3>
<table class="order_list">
	<tr>
		<th>&nbsp;</th>
		<th>订单号</th>
		<th>下单时间</th>
		<th>商品数</th>
		<th>总金额</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<%
		for(int i = 0; i < list.size(); i++) {
			Orders o = list.get(i);
	%>
	<tr>
		<td>&nbsp;</td>
		<td><%=o.getOrder_id() %></td>
		<td><%=o.getOrder_time() %></td>
		<td><%=o.getGoods_num() %></td>
		<td><%=o.getCheckout() %></td>
		<td>
		<%
			if(o.getOperated() == 0) {
				out.print("等待付款");
			}else if(o.getOperated() == 1) {
				out.print("已付款，等待发货...");
			}else if(o.getOperated() == 2) {
				out.print("已发货，请注意查收");
			}else if(o.getOperated() == 3) {
				out.print("已签收");
			}
		%>
		</td>
		<td><a class="show">展开详情</a></td>
	</tr>
	<%
		}
	%>
</table>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>