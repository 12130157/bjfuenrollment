<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.cakeonline.dao.GoodsDAO"%>
<%@ page import="cn.cakeonline.dao.GoodsPicDAO"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页-蛋糕，美味</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	GoodsDAO dao = new GoodsDAO();
	ArrayList<GoodsVO> list = (ArrayList<GoodsVO>) dao.getAll();
%>
<table color="#ffffed" cellSpacing="0" cellPadding="0" width="1000"
	align="center" bgcolor="#ffffff" border="0">
	<tr>
		<td valign="top" width="50" bgcolor="#fff7e6">
		<table cellSpacing="0" cellPadding="0" border="0">
		</table>
		</td>
		<td width="210" valign="top" style="padding: 0; margin: 0">
		<table width="50" cellSpacing="0" cellPadding="0" border="0">
			<td width="181">
			<table id=_01 cellSpacing="0" cellPadding="0" width="181" border="0">
				<tr>
					<td><img height="160" alt="小小蛋糕" src="images/left_01.jpg"
						width="181"></td>
				</tr>
				<tr>
					<td width="50" height="58"><a href="index.jsp"><img
						height="58" alt=首页 src="images/left_03.jpg" width="181" border="0"
						name="Image25"></a></td>
				</tr>
				<tr>
					<td width="181" height="49"><a href="index.jsp"><img
						height="49" alt=蛋糕 src="images/left_04.jpg" width="181" border="0"
						name="Image26"></a></td>
				</tr>
				<tr>
					<td width="181" height="62"><a
						<%if (session.getAttribute("username") == null) {%>
						href="user/login.jsp" <%}%>><img height="62" alt=登陆
						src="images/left_05.jpg" width="181" border="0" name="Image27"></a></td>
				</tr>
				<tr>
					<td width="181" height="53"><a
						<%if (session.getAttribute("username") == null) {%>
						href="user/register.jsp" <%}%>><img height="53" alt=注册
						src="images/left_06.jpg" width="181" border="0" name="Image28"></a></td>
				</tr>
				<tr>
					<td width="181" background=images/left_07.jpg height="81">
					<table height="46" cellSpacing="0" cellPadding="0" width="172"
						border="0">
						<tbody>
							<tr>
								<td width="60" height="50">&nbsp;</td>
								<td valign="bottom" width="110"><span class=style1 STYLE2
									style="padding-left: 1px;"> <a class="style1"
									href="user/index.jsp">我的小小</a></span></td>
							</tr>
						</tbody>
					</table>
					</td>
				</tr>
				<tr>
					<td width="181" background=images/left_08.jpg height=72>
					<table height="31" width="181">
						<tbody>
							<tr>
								<td width="65" height="70">&nbsp;</td>
								<td valign="middle" width="110"><span class="style1"
									style="padding-left: 10px;"> <a class=style1
									href="user/cart.jsp">购物车</a></span></td>
							</tr>
						</tbody>
					</table>
					</td>
				</tr>
				<td background="images/left_09.jpg" height="90" valign="top">
				<table height="31" width="181">
					<tbody>
						<td width="65" height="32">&nbsp;</td>
						<td valign="bottom" width="100"><span class=style1
							style="padding-left: 20px;"> <a class="style1">新品</a></span></td>
						</tr>
				</table>
				</td>
				<tr>
					<td><img height="210" alt="享受生活" src="images/left_10.jpg"
						width="181"></td>
				</tr>
			</table>
			</td>
			<td valign="top" width="90"><img height="370"
				src="images/left_13.jpg" width="90"></td>
		</table>
		</td>
		<td width="680" valign="top">
		<table width="100%" align="center" cellSpacing="0" cellPadding="0"
			border="0">
			<tr>
				<td>
				<table width="680" cellSpacing="0" cellPadding="0" border="0">
					<tbody>
						<tr>
							<td width="680">
							<table width="680" cellSpacing="0" cellPadding="0" border="0">
								<tbody>
									<tr>
										<td>
										<table height="145" width="490" cellSpacing="0"
											cellPadding="0" border="0">
											<tbody>
												<tr>
													<td><img height="45" alt="" src="images/up_01_01.gif"
														width="270"></td>
													<td><img height="45" alt="" src="images/up_01_02.gif"
														width="220"></td>
												</tr>
												<tr>
													<td><img height="100" alt="" src="images/up_01_03.gif"
														width="270"></td>
													<td><img height="100" alt="" src="images/up_01_04.gif"
														width="220"></td>
												</tr>
											</tbody>
										</table>
										</td>
										<td valign="bottom" width="200" background="images/up_02.gif">
										<table width="140">
										</table>
										</td>
									</tr>
								</tbody>
							</table>
							</td>
						</tr>
						<tr>
							<td>
							<table width="680">
							</table>
							</td>
						</tr>
					</tbody>
				</table>
				</td>
			</tr>
			<tr>
				<td>
				<table width="100%" align="center">
					<%
						if (list.size() > 0) {
							for (int i = 0; i < list.size(); i++) {
								GoodsVO g = list.get(i);
								GoodsPicDAO ndao = new GoodsPicDAO();
								String pic = ndao.getPic(g.getGoodsId());
					%>
					<%
						if (i % 3 == 0) {
					%>
					<tr>
						<td><img height="19" src="images/t1_line.gif" width="650"></td>
					</tr>
					<tr>
						<td>
						<ul class="gallery">
							<%
								}
							%>

							<li><a href="show.jsp?id=<%=g.getGoodsId()%>"><span></span>
							<img height="165" alt="<%=g.getName()%>" src="<%=pic%>"
								width="182"></a></li>
							<%
								if ((i+1) % 3 == 0) {
							%>
						</ul>
						</td>
					</tr>
					<%
						}
							}
						}
					%>
				</table>
				</td>
			</tr>
		</table>
		</td>
</table>
<table width="990" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="52" bgcolor="#FFFFFF">&nbsp;</td>
		<td width="182" height="109" align="left" valign="top"
			background="images/second/l2.jpg">&nbsp;</td>
		<td width="990" valign="top" bgcolor="#FFFFFF">
		<table width="990" height="100" border="0" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="747" height="109" background="images/dgzn_sj_07.gif"
					bgcolor="#FFFFFF" class="word2" align="center">
				<div style="margin-top: 20px"><a
					href="../html/story/story.jsp" class="word2">品牌故事</a> | <a href=""
					class="word2">订购指南</a> | <a href="" class="word2">产品制作时间</a> | <a
					href="" class="word2">免费品尝</a> | <a href="" class="word2">常见问题</a>
				| <a href="" class="word2">销售员专区</a> | <a href="" class="word2">联系我们</a>
				<br>
				北京五环内免费送货 订购热线：010-82392974</div>
				</td>
			</tr>
		</table>
		</td>
		<td width="50" height="109" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
	</tr>
</table>
</body>
</html>