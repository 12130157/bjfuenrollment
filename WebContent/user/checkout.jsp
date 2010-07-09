<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="cn.cakeonline.vo.UserVO"%>
<%@ page import="cn.cakeonline.vo.OrdersGoods"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.dao.*"%>
<%
	UserVO user = null;
	if (session.getAttribute("user") != null) {
		user = (UserVO) session.getAttribute("user");
		ArrayList<OrdersGoods> li = (ArrayList<OrdersGoods>) session
				.getAttribute("cartlist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结算中心</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table color="#ffffed" cellSpacing="0" cellPadding="0" width="970"
	align="center" bgcolor="#ffffff" border="0">
	<tbody>
		<tr>
			<td valign="top" width="40" bgcolor="#fff7e6">
			<table cellSpacing="0" cellPadding="0" border="0">
				<tbody>
					<tr>
						<td width="50" height="250"></td>
					</tr>
				</tbody>
			</table>
			</td>
			<td width="210" valign="top" style="padding: 0; margin: 0">
			<table width="50" cellSpacing="0" cellPadding="0" border="0">
				<tbody>

					<tr>

						<td width="181">
						<table id=_01 cellSpacing="0" cellPadding="0" width="181"
							border="0">
							<tbody>

								<tr>
									<td><img height="160" alt="小小蛋糕"
										src="../images/left_01.jpg" width="181"></td>
								</tr>
								<tr>
									<td width="50" height="58"><a href="../index.jsp"><img
										height="58" alt=首页 src="../images/left_03.jpg" width="181"
										border="0" name="Image25"></a></td>
								</tr>
								<tr>
									<td width="181" height="49"><a href="../index.jsp"><img
										height="49" alt=蛋糕 src="../images/left_04.jpg" width="181"
										border="0" name="Image26"></a></td>
								</tr>
								<tr>
									<td width="181" height="62"><a
										<%if (session.getAttribute("username") == null) {%>
										href="login.jsp" <%}%>><img height="62" alt=登陆
										src="../images/left_05.jpg" width="181" border="0"
										name="Image27"></a></td>
								</tr>

								<tr>
									<td width="181" height="53"><a
										<%if (session.getAttribute("username") == null) {%>
										href="register.jsp" <%}%>><img height="53" alt=注册
										src="../images/left_06.jpg" width="181" border="0"
										name="Image28"></a> <%
 	if (session.getAttribute("username") == null) {
 %> <%
 	}
 %>
									</td>
								</tr>

								<tr>
									<td width="181" background=../images/left_07.jpg height="81">
									<table height="46" cellSpacing="0" cellPadding="0" width="172"
										border="0">
										<tbody>
											<tr>
												<td width="60" height="50">&nbsp;</td>
												<td valign="bottom" width="110"><span class=style1
													style="padding-left: 1px;"> <a class=style1
													href="index.jsp">我的小小</a></span></td>
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
													href="cart.jsp">购物车</a></span></td>
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
													href="gouwuche.html" target=_blank>购物车</a></span></td>
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
									<td><img height="210" src="../images/left_10.jpg"
										width="181"></td>
								</tr>
								<tr>
									<td height="700" nowrap background="../images/left_11.jpg">&nbsp;</td>
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
															src="../images/up_01_02.gif" width="220"></td>
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
						<td height="58" valign="top"
							background="/tscake/images/mofei/t4_00.gif">&nbsp;</td>
					</tr>
					<tr>
						<td valign="middle">
						<table width="681" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="left" valign="top" bgcolor="#FFFFED">
								<table width="600" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="18" height="50" align="left" valign="bottom"><img
											src="../images/jt.gif" width="13" height="13"
											style="margin-bottom: 4px;" /></td>
										<td width="339" align="left" valign="bottom" class="cu">完成我的订单
										<input type="hidden" name="isNetShop" id="isNetShop" value="0" />
										<input type="hidden" name="zkUserRate" id="zkUserRate"
											value="1.00" /> <input type="hidden" name="userAttr"
											id="userAttr" value="1" /> <input type="hidden"
											name="isMember" id="isMember" value="0" /> <input
											type="hidden" name="is214" id="is214" value="" /> <input
											type="hidden" name="isTQZK" id="isTQZK" value="1.00" /> <input
											type="hidden" name="isCake" id="isCake" value="01" /></td>
										<td width="243" align="right" valign="bottom" class="wz">&nbsp;</td>
									</tr>
									<tr>
										<td height="600" colspan="3" align="right" valign="top"
											class="wz">
										<form action="checkout.do" method="post" id="userCheckout" name="userCheckout">
										<table width="582" border="0" cellspacing="0" cellpadding="0"
											id="tableTest">
											<tr>
												<td height="12" colspan="5" align="right" valign="bottom"><span
													class="word2">(提前24小时订购蛋糕 均享受95折优惠)</span> <input
													type="hidden" name="corpCP" id="corpCP" value="0" /> <input
													type="hidden" name="syCP" id="syCP" value="0.0" /></td>
											</tr>
											<tr>
												<td height="13" colspan="5" valign="bottom"><img
													src="../images/gwc_03.gif" alt="" width="583" height="6" /></td>
											</tr>
											<tr>
												<td width="90" height="40" align="center" valign="middle">商品名称</td>
												<td width="151" height="40" align="center" valign="middle">规格</td>
												<td width="150" height="40" align="center" valign="middle">价格</td>
												<td width="92" height="40" align="center" valign="middle">购买数量</td>
												<td width="105" height="40" align="center" valign="middle">小计</td>
											</tr>
											<tr>
												<td height="1" colspan="5"><img
													src="../images/gwc_06.gif" width="583" height="1" /></td>
											</tr>
											<%
												double total = 0;
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
															double price = gtdao.getPrice(og.getGoods_id(), og
																	.getType_id());
															total += price * og.getNum();
											%>
											<tr>
												<td width="112" height="40" align="center" valign="bottom"><%=name%></td>
												<td width="147" height="40" align="center" valign="bottom"><%=type%></td>
												<td width="85" height="40" align="center" valign="bottom"><%=price%></td>
												<td width="84" height="40" align="center" valign="bottom"><%=og.getNum()%></td>
												<td width="84" height="40" align="center" valign="bottom">￥<%=price * og.getNum()%>元</td>
											</tr>
											
											<%
													
												}
													} else {
											%>
											<tr>
												<td colspan="6" align="center" scope="col"><span
													style="color: #C06">您还没有选购任何商品</span></td>
											</tr>
											<%
												}
											%>
											<input type="hidden" name="total" value="<%=total %>"></input>
											<tr>
												<td height="1" colspan="5"><img
													src="../images/gwc_06.gif" alt="" width="583" height="1" /></td>
											</tr>
											<tr>
												<td height="45" colspan="2" align="left" valign="middle"><a
													href="cart.jsp"> <img src="../images/gwc_wcdd_03.gif"
													width="187" height="19" /> </a></td>
											</tr>
											<tr>
												<td height="14" colspan="5"><img
													src="/tscake/images/mofei/gwc_03.gif" width="583"
													height="6" /></td>
											</tr>
											<tr style="display: ;">
												<td height="1" colspan="5"><img
													src="../images/gwc_06.gif" width="583" height="1" /></td>
											</tr>
											<tr>
												<td height="190" colspan="5">
												<table width="582" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="582" align="left" valign="top">
														<table width="582" border="0" cellspacing="0"
															cellpadding="0" style="margin-top: 10px">
															<tr>
																<td height="40" width="200" align="left" valign="middle"
																	class="cu">收货人信息 &gt;</td>
																<td width="382" align="right" valign="middle"></td>
															</tr>
															<tr>
																<td colspan="2">
																<table border="0" cellspacing="0" cellpadding="0"
																	width="582">
																	<tr>
																		<td width="15" height="40">&nbsp;</td>
																		<td width="110" height="40" align="left">收&nbsp;货&nbsp;人：</td>
																		<td height="40" align="left" valign="middle"
																			colspan="3"
																			style="background: url(../images/dgzn_fs_17.gif) no-repeat; background-position: left;"><input
																			type="text" name="receiptor" id=receiptor value=""
																			style="width: 120px; border: 0; background: transparent; padding-left: 3px;" />
																		</td>
																		<td width="31">&nbsp;</td>
																	</tr>
																	<tr>
																		<td width="15" height="40">&nbsp;</td>
																		<td width="110" align="left">详细地址：</td>
																		<td height="40" align="left" valign="middle"
																			style="background: url(../images/wdmf-xx_03.gif) no-repeat; background-position: left;"><input
																			type="text" name="detail" id="detail" value=""
																			style="width: 270px; border: 0; background: transparent; padding-left: 3px;"
																			maxlength="50" /></td>
																		<td width="47" colspan="3">&nbsp;</td>
																	</tr>
																	<tr>
																		<td width="15" height="30">&nbsp;</td>
																		<td width="110" align="left">电话：</td>
																		<td height="40" align="left" valign="middle"
																			style="background: url(../images/dgzn_fs_17.gif) no-repeat; background-position: left;"><input
																			type="text" name="telephone" id="telephone" value=""
																			style="width: 120px; border: 0; background: transparent; padding-left: 3px;" />
																		</td>
																		<td colspan="3">&nbsp;</td>
																	</tr>
																	<tr>
																		<td width="15" height="30">&nbsp;</td>
																		<td width="110" align="left">手机：</td>
																		<td height="40" align="left" valign="middle"
																			style="background: url(../images/dgzn_fs_17.gif) no-repeat; background-position: left;"><input
																			type="text" name="mobile" id="mobile" value=""
																			style="width: 120px; border: 0; background: transparent; padding-left: 3px;" />
																		</td>
																		<td colspan="3">&nbsp;</td>
																	</tr>
																</table>
																</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr>
														<td height="10" colspan="5"></td>
													</tr>
													<tr>
														<td height="14" colspan="5"><img
															src="../images/gwc_03.gif" width="583" height="6" /></td>
													</tr>
												</table>
												</td>
											</tr>
											<tr>
												<td height="15" colspan="5" align="left" valign="bottom"></td>
											</tr>
											<tr>
												<td colspan="5">
												<table width="100%" border="0" align="center"
													cellpadding="0" cellspacing="0">
													<tr>
														<td height="98" width="62" align="left" valign="middle"
															nowrap class="cu">备注 &gt;</td>
														<td width="522" height="98" align="left" valign="middle"
															style="background: url(../images/wdmf-xxxx_03.gif) no-repeat; background-position: left; width: 270;">&nbsp;
														<textarea name="message" id="message" rows="4" cols="30"
															style="padding: 20px 5px; border: 0 none; background: none transparent;"></textarea>
														</td>
													</tr>
												</table>
												</td>
											</tr>
											<tr>
												<td height="15" colspan="5" align="left" valign="bottom"></td>
											</tr>
											<tr>
												<td height="17" colspan="5"><img
													src="../images/gwc_03.gif" alt="" width="583" height="6" /></td>
											</tr>
											<tr>
												<td height="40" colspan="5" align="left" valign="bottom">
												<table width="100%">
													<tr>
														<td width="76%" align="center">关于订单的任何问题，如不希望与收货人联系，请您留下您的联系电话：</td>
														<td width="24%" height="40" align="left" valign="middle"
															style="background: url(../images/dgzn_fs_17.gif) no-repeat; background-position: left;">&nbsp;
														<input type="text" name="custMobile" id="custmobile"
															style="width: 120px; border: 0; background: transparent;" />
														</td>
													</tr>
												</table>
												</td>
											</tr>
											<tr>
												<td height="97" valign="middle" align="center" colspan="5">
												<img width="75" height="19"
													onclick="checkInput()" src="../images/gwc_wcdd_11.gif">
												</td>
											</tr>
										</table>
										</form>
										</td>
									</tr>
								</table>
								</td>
								<td width="28" valign="top" align="right">
								<table height="100%" width="100%" border="0" cellspacing="0"
									cellpadding="0">
									<tr>
										<td width="29" height="954" valign="top" align="right"
											background="../images/second/r1.gif"></td>
									</tr>
									<tr>
										<td height="269" valign="top" align="right"
											background="../images/dgzn_sj_04.gif"></td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
			</td>

			<td width="50" valign="top" bgcolor="#E9D69B">
			<table border="0" cellspacing="0" cellpadding="0">
			</table>
			</td>
		</tr>
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
				<td width="747" height="109" background="../images/dgzn_sj_07.gif"
					bgcolor="#FFFFFF" class="word2" align="center">
				<div style="margin-top: 20px"><a href="" class="word2">品牌故事</a>
				| <a href="" class="word2">订购指南</a> | <a href="" class="word2">产品制作时间</a>
				| <a href="" class="word2">免费品尝</a> | <a href="" class="word2">常见问题</a>
				| <a href="" class="word2">销售员专区</a> | <a href="" class="word2">联系我们</a>
				<br>
				北京五环内免费送货 订购热线：010-82392974</div>
				<div style="display: none"></div>
				</td>
			</tr>
		</table>
		</td>
		<td width="50" height="109" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
	</tr>
</table>
<script type="text/javascript">
function checkInput() {
	var r = document.userCheckout.receiptor.value;
	var telephone = document.userCheckout.telephone.value;
	var mobile = document.userCheckout.mobile.value;
	var detail = document.userCheckout.detail.value;
	if(!mobile && !telephone) {
		alert("手机和电话号码必须填一个！");
		document.userCheckout.mobile.focus();
		return false;
	}else if(!r) {
		alert("请填写收货人！");
		document.userCheckout.receiptor.focus();
		return false;
	}else if(!detail) {
		alert("请填写收货详细地址！");
		document.userCheckout.detail.focus();
		return false;
	}
	document.userCheckout.submit();
}
</script>
</body>
</html>
<%
	} else {
		session.setAttribute("error", "您还没有登录哦！");
		response.sendRedirect("login.jsp");
	}
%>