<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.cakeonline.dao.GoodsDAO" %>
<%@ page import="cn.cakeonline.vo.GoodsVO" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页-蛋糕，美味</title>
</head>
<body>
首页测试
<%
	GoodsDAO dao  = new GoodsDAO();
	ArrayList<GoodsVO> list = (ArrayList<GoodsVO>) dao.getAll();
%>
</body>
</html>