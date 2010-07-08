<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.cakeonline.vo.UserVO"%>
<%
	UserVO user = null;
	if (session.getAttribute("user") != null) {
		user = (UserVO) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结算中心</title>
</head>
<body>
<form id="userCheckoutFrm" method="post" action="checkout.do">
<h3>购物结算</h3>

<h3>收货地址</h3>
<p>收货人：<input type="text" name="receiptor"/></p>
<p>详细地址：<input type="text" name="detail"/></p>
<p>邮编：<input type="text" name="postcode"/></p>
<p>电话/手机：<input type="text" name="telephone"/></p>
<p>标识建筑：<input type="text" name="building"/></p>
<p><input type="submit" class="btn" name="submit" value="确认无误，去结算"/></p>
</form>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>