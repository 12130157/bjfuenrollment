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
<title>个人设定</title>
</head>
<body>
<div id="myInfo">
<h3>我的信息</h3>
<div class="msg">
<%
	if(session.getAttribute("msg") != null) {
		out.print(session.getAttribute("msg"));
	}
%></div>
<form method="post" action="updateinfo.do" id="userInfo">
<p>用户名：<%=user.getUsername()%></p>
<p>昵称：<input type="text" name="nickname"
	value="<%=user.getNickname()%>" /></p>
<p>性别：<input type="radio" id="gender_0" name="gender" value="0"
	<%if (user.getGender() == 0) {
					out.print("checked");
				}%> /><label
	for="gender_0">保密</label>
	<input type="radio" id="gender_1" name="gender" value="1"
	<%if (user.getGender() == 1) {
					out.print("checked");
				}%> /><label for="gender_1">男</label>
	<input type="radio" id="gender_2" name="gender" value="2"
	<%if (user.getGender() == 2) {
					out.print("checked");
				}%> /><label for="gender_2">女</label>
</p>
<p>
	电子邮箱：<input type="text" name="email" value="<%=user.getEmail() %>" />
</p>
<p>
	<input type="submit" value="提交"/>
	<input type="hidden" name="user_id" value="<%=user.getUserId() %>"/>
</p>
</form>
</div>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>