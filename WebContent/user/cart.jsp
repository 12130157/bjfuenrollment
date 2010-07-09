<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.OrdersGoods"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.vo.UserVO"%>
<%@ page import="cn.cakeonline.dao.*" %>
<%
	UserVO user = null;
	if (session.getAttribute("user") != null) {
ArrayList<OrdersGoods> li = (ArrayList<OrdersGoods>) session.getAttribute("cartlist"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<link href="../css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<table color="#ffffed" cellSpacing="0" cellPadding="0" width="970"
	align="center" bgcolor="#ffffff" border="0">
		<tr>
			<td valign="top" width="40" bgcolor="#fff7e6">
			</td>

			<td width="210" valign="top" style="padding: 0; margin: 0">
			<table width="50" cellSpacing="0" cellPadding="0" border="0">
						<td width="181">
						<table id=_01 cellSpacing="0" cellPadding="0" width="181"
							border="0">
								<tr>
									<td><img height="160" alt="小小蛋糕"
										src="../images/left_01.jpg" width="181"></td>
								</tr>

								<tr>
									<td width="50" height="58"><a href="../index.jsp?path=1"><img
										height="58" alt=首页 src="../images/left_03.jpg" width="181"
										border="0" name="Image25"></a></td>
								</tr>

								<tr>
									<td width="181" height="49"><a href="dangao.jsp?path=1"><img
										height="49" alt=蛋糕 src="../images/left_04.jpg" width="181"
										border="0" name="Image26"></a></td>
								</tr>

								<tr>
									<td width="181" height="62"><a
										<% if(session.getAttribute("username") == null){%>
										href="login.jsp" <% }%>><img height="62" alt=登陆
										src="../images/left_05.jpg" width="181" border="0"
										name="Image27"></a> <% if(session.getAttribute("username") == null){%>
									<% }%>
									</td>
								</tr>

								<tr>
									<td width="181" height="53"><a
										<% if(session.getAttribute("username") == null){%>
										href="register.jsp" <% }%>><img
										height="53" alt=注册 src="../images/left_06.jpg" width="181"
										border="0" name="Image28"></a> <% if(session.getAttribute("username") == null){%>
									<% }%>
									</td>
								</tr>

								<tr>
									<td width="181" background=../images/left_07.jpg height="81">
									<table height="46" cellSpacing="0" cellPadding="0" width="172"
										border="0">
										<tbody>
											<tr>
												<td width="60" height="50">&nbsp;</td>
												<td valign="bottom" width="110"><span
													class="style1 STYLE2" style="padding-left: 1px;"> <a
													class=style1 href="myxiaoxiao.jsp" target=_blank>我的小小</a></span></td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>

								<tr>
									<td width="181" background=../images/left_08.jpg height=72>
									<table height="31" width="181">
										<tbody>
											<tr>
												<td width="65" height="70">&nbsp;</td>
												<td valign="middle" width="110"><span class=style1
													style="padding-left: 10px;"> <a class=style1
													href="cate.jsp" target=_blank>购物车</a></span></td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>

								<tr>
									<td background="../images/left_09.jpg" height="90" valign="top">
									<table height="31" width="181">
										<tbody>
											</tr>
											<td width="70" height="32">&nbsp;</td>
											<td valign="bottom" width="100"><span class=style1
												style="padding-left: 20px;"> <a class=style1
												href="newproduct.jsp" target=_blank>新品</a></span></td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>

								<tr>
									<td><img height="210" alt=享受生活 src="../images/left_10.jpg"
										width="181"></td>
								</tr>

							</tbody>
						</table>
						</td>

						<td valign="top" width="90"><img height="370"
							src="../images/left_13.jpg" width="90"></td>
				</tbody>
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
														<td><img height="45" alt=""
															src="../images/up_01_01.gif" width="270"></td>
														<td><img height="45" alt=""
															src="../images/up_01_02.gif" width="220"></a></td>
													</tr>

													<tr>
														<td><img height="100" alt=""
															src="../images/up_01_03.gif" width="270"></td>
														<td><img height="100" alt=""
															src="../images/up_01_04.gif" width="220"></td>
													</tr>
												</tbody>
											</table>
											</td>

											<td valign="bottom" width="200"
												background="../images/up_02.gif">
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



				<table width="681" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td valign="middle">
						<table width="681" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td rowspan="2" align="left" valign="top" bgcolor="#FFFFED">
								<table width="600" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="18" height="50" align="left" valign="bottom">
										<img src="../images/jt.gif" width="13" height="13"
											style="margin-bottom: 4px;" /></td>
										<td width="582" align="left" valign="bottom" class="cu">我的购物车</td>
									</tr>
									<tr>
										<td height="600" colspan="2" align="right" valign="top"
											class="wz">
										<table width="582" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td height="25" colspan="6" valign="bottom"><img
													src="../images/gwc_03.gif" width="583" height="6" /></td>
											</tr>
											<tr>
												<td colspan="6">
												<form
													action="/tscake/customerManageAction.do?method=updateProduct"
													name="detail" id="detail" method="post">
												<table>
													<tr>
														<td width="112" height="40" align="center" valign="bottom">商品名称</td>
														<td width="147" height="40" align="center" valign="bottom">规格</td>
														<td width="85" height="40" align="center" valign="bottom">价格</td>
														<td width="84" height="40" align="center" valign="bottom">购买数量</td>
														<td width="84" height="40" align="center" valign="bottom">小计</td>
														<td width="71" height="40" align="center" valign="bottom">操作</td>
													</tr>

													<tr>
														<td height="1" colspan="6"><img
															src="../images/gwc_06.gif" width="583" height="1" /></td>
													</tr>
													<%
														if (li != null) {
															for (int i = 0; i < li.size(); i++) {
																OrdersGoods og = li.get(i);
																TypeDAO tdao = new TypeDAO();
																// 规格
																String type = tdao.getOne(og.getType_id());
																GoodsDAO gdao = new GoodsDAO();
																GoodsVO gvo = gdao.getOne(og.getGoods_id());
																// 名称
																String name = gvo.getName();
																GoodsTypeDAO gtdao = new GoodsTypeDAO();
																// 价格
																double price = gtdao.getPrice(og.getGoods_id(),og.getType_id());
													%>
													<tr>
														<td width="112" height="40" align="center" valign="bottom"><%=name %></td>
														<td width="147" height="40" align="center" valign="bottom"><%=type %></td>
														<td width="85" height="40" align="center" valign="bottom"><%=price %></td>
														<td width="84" height="40" align="center" valign="bottom"><%=og.getNum() %></td>
														<td width="84" height="40" align="center" valign="bottom">￥<%=price*og.getNum() %>元</td>
														<td width="71" height="40" align="center" valign="bottom"></td>
													</tr>
													<%
															}
														}else{
													%>
													<tr>
														<td colspan="6" align="center" scope="col"><span
															style="color: #C06">您还没有选购任何商品</span></td>
													</tr>
													<%
													}
													%>
													<tr>
														<td height="51" colspan="6">
														<table width="582" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="254" align="left" valign="middle">
																购物金额小计：<span id="total">0.00元 </span></td>
																<td width="154">&nbsp;</td>
																<td width="81" align="center" valign="middle"><a
																	href="#"
																	class="xhx" style="color: #000;">清空购物车</a></td>
																<td width="93" align="center" valign="middle"><a
																	href="#bottom" onClick="updateCart();" class="xhx"
																	style="color: #000;">更新购物车</a></td>
															</tr>
														</table>
														</td>
													</tr>

													<tr>
														<td height="42" colspan="4"><a href="../index.jsp">
														<img src="../images/gwc_09.gif" width="75" height="19"
															align="left" /> </a></td>
														<td width="100"><a href="checkout.jsp"><img
															src="../images/jiesuan.gif" width="75" height="19"
															 /></a>

														<td width="110"><input type="image"
															src="../images/wuzhanghu.gif" width="101" height="19"
															align="right" onClick="wuzhanghu()" /></td>
													</tr>
												</table>
												</form>
												</td>
											</tr>
											<tr>

												<td colspan="6"><img src="../images/gwc_03.gif"
													width="583" height="6" /></td>
											</tr>
											<tr>
												<td height="52" colspan="6" align="left" valign="bottom"></td>
											</tr>

											<tr>
												<td height="164" colspan="6">&nbsp;</td>
											</tr>
										</table>
										</td>
									</tr>
								</table>
								</td>

								<td width="29" valign="top">&nbsp;</td>
							</tr>
							<tr>
								<td height="215" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
</table>
				<table width="960" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="52" bgcolor="#FFFFFF">&nbsp;</td>
						<td width="182" height="109" align="left" valign="top"
							background="../images/second/l2.jpg">&nbsp;</td>

						<td width="960" valign="top" bgcolor="#FFFFFF">
						<table width="960" height="100" border="0" cellpadding="0"
							cellspacing="0" bgcolor="#FFFFFF">
							<tr>
								<td width="747" height="109"
									background="../images/dgzn_sj_07.gif" bgcolor="#FFFFFF"
									class="word2" align="center">
								<div style="margin-top: 20px"><a
									href="../html/story/story.jsp" class="word2">品牌故事</a> | <a
									href="" class="word2">订购指南</a> | <a href="" class="word2">产品制作时间</a>
								| <a href="" class="word2">免费品尝</a> | <a href="" class="word2">常见问题</a>
								| <a href="" class="word2">销售员专区</a> | <a href="" class="word2">联系我们</a>
								<br>

								北京五环内免费送货 订购热线：010-82392974
								<div style="display: none"></div>
								</td>
							</tr>
						</table>
						</td>
						<td width="50" height="109" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
				</table>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>