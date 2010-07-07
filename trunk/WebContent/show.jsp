<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cn.cakeonline.dao.GoodsDAO"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.vo.TypeVO"%>
<%@ page import="cn.cakeonline.dao.GoodsTypeDAO"%>
<%
	String sid = request.getParameter("id");
	//out.println(sid);
	GoodsVO vo = null;
	int id = 0;
	if (!sid.equals("")) {
		id = Integer.parseInt(sid);
		GoodsDAO dao = new GoodsDAO();
		vo = dao.getOne(id);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>蛋糕</title>
</head>
<body>
<%
	if (vo != null && id != 0) {
%>
名称：<%=vo.getName()%>
<div>
<form action="user/tocart.do" method="post" name="addToCart"
	id="addToCart">
<p>购买数量：<input type="text" name="num" size="2" /></p>
<p>选择大小：</p>

<%
	GoodsTypeDAO dao = new GoodsTypeDAO();
%>
<p><input type="radio" name="type" value="1" /> <label>1.5磅&nbsp;约14.5X14.5cm&nbsp;&nbsp;[￥<%=dao.getPrice(id, 1)%>]</label></p>
<p><input type="radio" name="type" value="2" /> <label>2.5磅&nbsp;约18.5X18.5cm&nbsp;&nbsp;[￥<%=dao.getPrice(id, 2)%>]</label></p>
<p><input type="radio" name="type" value="3" /> <label>3.5磅&nbsp;约24X24cm&nbsp;&nbsp;[￥<%=dao.getPrice(id, 3)%>]</label></p>
<p><input type="radio" name="type" value="3" /> <label>5.5磅&nbsp;约28.5X28.5cm&nbsp;&nbsp;[￥<%=dao.getPrice(id, 4)%>]</label></p>
<p><input type="radio" name="type" value="3" /> <label>10磅&nbsp;约37×37cm&nbsp;&nbsp;[￥<%=dao.getPrice(id, 5)%>]</label></p>
<input type="hidden" name="id" value="<%=id%>" />
<p><input type="image" name="submit" src=""
	onclick="document.addToCart.submit();" value="添加至购物车" /></p>
</form>
</div>

<%
	}
%>

</body>
</html>