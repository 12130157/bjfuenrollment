<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<% 
if(request.getAttribute("error") != null) {
	out.println("<span class='error'>" + (String) request.getAttribute("error") + "</span>");	
}
%>
<form method="post" action="login.do">
用户名：<input name="username"/><br/>
密码：<input name="password" type="password"/><br/>
<input type="submit" value="登录"/>
</form>
</body>
</html>