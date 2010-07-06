<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cn.cakeonline.dao.GoodsDAO"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<% 
	String sid = request.getParameter("id");
	GoodsVO vo = null;
	int id = 0;
	if(!sid.equals("")) {
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
<% if(vo != null && id != 0) { %>
名称：<%=vo.getName() %>
<a href="user/tocart.do?id=<%=id %>">添加至购物车</a>
<% } %>
</body>
</html>