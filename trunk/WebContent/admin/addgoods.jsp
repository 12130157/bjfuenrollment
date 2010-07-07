<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,cn.cakeonline.vo.TypeVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加商品</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
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
<form action="addgoods.do" method="post">
  <table width="471" border="1" cellspacing="3" cellpadding="0">
    <tr>
      <td width="148">商品名称：</td>
      <td width="308"><input name="name"/></td>
    </tr>
    <tr>
      <td>商品描述：</td>
      <td><textarea name="descri"></textarea></td>
    </tr>
    <tr>
      <td>商品规格及价格：</td>
      <td>
      <% 
	  	List<TypeVO> li = (List<TypeVO>) request.getAttribute("list");
      	for(int i = 0; i < li.size(); i++) {
	  %>
      	<p>
      	<label for="type_<%=li.get(i).getTypeId() %>"><%=li.get(i).getTypeName() %></label> --价格：<input type="text" name="price" size="4" />
      	</p>
      <% }%>
      </td>
    </tr>
    <tr>
      <td>口味：</td>
      <td><textarea name="taste" ></textarea></td>
    </tr>
    <tr>
      <td>甜度：</td>
      <td><input type="radio" name="sweety" id="value_1" value="1"/>
        <label for="value_1">1</label>
        <input type="radio" name="sweety" id="value_2" value="2"/>
        <label for="value_2">2</label>
        <input type="radio" name="sweety" id="value_3" value="3"/>
        <label for="value_3">3</label>
        <input type="radio" name="sweety" id="value_4" value="4"/>
        <label for="value_4">4</label>
        <input type="radio" name="sweety" id="value_5" value="5"/>
        <label for="value_5">5</label></td>
    </tr>
    <tr>
      <td>原料：</td>
      <td><textarea name="material" ></textarea></td>
    </tr>
    <tr>
      <td>图片URL：</td>
      <td><input name="pic" /></td>
    </tr>
    <tr>
      <td><input type="submit" value="提交" /></td>
      <td><input type="reset" value="重置" /></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>