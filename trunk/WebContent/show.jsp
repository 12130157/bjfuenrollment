<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cn.cakeonline.dao.GoodsDAO"%>
<%@ page import="cn.cakeonline.vo.GoodsVO"%>
<%@ page import="cn.cakeonline.vo.TypeVO"%>
<%@ page import="cn.cakeonline.dao.GoodsPicDAO"%>
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
<title><%=vo.getName()%> - 蛋糕</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<%
	if (vo != null && id != 0) {
		GoodsPicDAO ndao = new GoodsPicDAO();
		String pic = ndao.getPic(id);
%>
<%
	GoodsTypeDAO dao = new GoodsTypeDAO();
%>

<table color="#ffffed" cellSpacing="0" cellPadding="0" width="900"
	align="center" bgcolor="#ffffff" border="0">
	<td height="5">
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
						<td valign="top" width="90"></td>
			</table>
			</td>
			<td width="680" valign="top">
			<table width="100%" align="center" cellSpacing="0" cellPadding="0"
				border="0">
				<tr>
					<td>
					<table width="100%" align="center">
						<tr>
							<td colspan="3"><img src="images/3t1_04.gif" width="723"
								height="147" alt="" /></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			<table width="723" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="440" height="470"><img id="bigpic" name="bigpic"
						src="<%=pic %>" alt="<%=vo.getName() %>" width="440"
						height="470" /></td>
					<td valign="top">
					<table width="276" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="2"><img src="images/3r1.gif" width="283"
								height="30" /></td>
						</tr>
						<tr>
							<td width="247" valign="top" bgcolor="#FFFFED">
							<form action="user/tocart.do" method="post" name="addToCart"
								id="addToCart">
							<table width="230" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td colspan="2" height="1"></td>
								</tr>
								<tr>
									<td colspan="2" class="txt1">
									<table cellpadding="0px" cellspacing="0px" width="100%"
										border="0" height="10">
										<tr>
											<td width="74%"><strong><%=vo.getName()%></strong><br />
											<input type="hidden" name="id" value="<%=id%>" /></td>
											<td width="26%"><img id="threehours" name="threehours"
												src="images/3hours.gif" alt="1.5磅、2.5磅产品可提前3小时订购" width="56"
												height="27" /></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td class=txt2 height="6" colspan="2"></td>
								</tr>
								<tr>
									<td colspan="2" class="txt2"><%=vo.getDescri()%><br />
									</td>
								</tr>
								<tr>
									<td colspan="2" class="txt2">
									<div
										style="padding-top: 10px; padding-bottom: 13px; line-height: 26px;">
									<input type="radio" name="type" value="1" /> <label>1.5磅
									直径约18.5cm&nbsp;[￥<%=dao.getPrice(id, 1)%>]</label><br />
									<input type="radio" name="type" value="2" /> <label>2.5磅
									直径约21cm&nbsp;[￥<%=dao.getPrice(id, 2)%>]</label><br />
									<input type="radio" name="type" value="3" /> <label>3.5磅
									直径约24.5cm&nbsp;[￥<%=dao.getPrice(id, 3)%>]</label><br />
									<input type="radio" name="type" value="4" /> <label>5.5磅
									直径约30cm&nbsp;[￥<%=dao.getPrice(id, 4)%>]</label><br />
									<input type="radio" name="type" value="5" /> <label>10磅
									约39cm&nbsp;[￥<%=dao.getPrice(id, 5)%>]</label><br />
									</div>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="word2">购买数量： <select
										style="background: #fff; border: 1px solid #333333; color: #470044; height: 20px; font-size: 12px;"
										name="num" id="num">
										<option selected="selected" value="1">&nbsp;&nbsp;&nbsp;&nbsp;1</option>
										<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;2</option>
										<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;3</option>
										<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;4</option>
										<option value="5">&nbsp;&nbsp;&nbsp;&nbsp;5</option>
										<option value="6">&nbsp;&nbsp;&nbsp;&nbsp;6</option>
										<option value="7">&nbsp;&nbsp;&nbsp;&nbsp;7</option>
										<option value="8">&nbsp;&nbsp;&nbsp;&nbsp;8</option>
										<option value="9">&nbsp;&nbsp;&nbsp;&nbsp;9</option>
										<option value="10">&nbsp;&nbsp;&nbsp;&nbsp;10</option>
									</select> ￥<span id="total">0.00</span></td>
								</tr>
								<tr>
									<td height="50"><input type="image" id="image1"
										src="images/buy.gif" width="91" height="24"
										onclick="document.addToCart.submit();" /></td>
									<td width="97"><a href="#"><img src="images/sc.gif"
										width="72" height="22" border="0" /></a></td>
								</tr>
								<tr>
									<td colspan="2" align="right" height="25px">
									提前24小时订购，享受九五折优惠</td>
								</tr>
								<tr>
									<td colspan="2" align="left" height="25px" valign="bottom">
									</td>
								</tr>
							</table>
							</form>
							</td>
							<td width="29"><img src="images/3r2.gif" width="29"
								height="400" /></td>
						</tr>
						<tr>
							<td colspan="2"><img src="images/3r3.gif" width="280"
								height="35" /></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			<table width="716" height="477" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td height="477" valign="top" bgcolor="#FFF7E6">
					<table width="600" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="12"></td>
						</tr>
					</table>
					<table width="600" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="20" valign="top" class="word2"></td>
							<td width="570" style="overflow-y: hidden;"></td>
						</tr>
					</table>
					<table width="600" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td colspan=3 height=2></td>
						</tr>
						<tr>
						<tr>
							<td width="600" class="txt2">
							<table cellspacing="0" cellpadding="0" width="600" align="center"
								border="0">
								<tbody>
									<tr>
										<td colspan="3" height="10">&nbsp;</td>
									</tr>
									<tr>
										<td class="txt2" width="600" colspan="3">
										<table cellspacing="0" cellpadding="0" width="600"
											align="center" border="0">
											<tbody>
												<tr>
													<td class="txt2" valign="top" align="left" width="281">
													<table cellspacing="0" cellpadding="0" align="left"
														border="0">
														<tbody>
															<tr>
																<td class="txt2" valign="top" align="center" width="18"
																	height="28">&middot;</td>
																<td class="txt2" colspan="2"><strong>口味：</strong> <br />
																<%=vo.getTaste()%></td>
															</tr>
															<tr>
																<td class="txt2" valign="top" align="center" height="28">&middot;</td>
																<td class="txt2" width="45" height="28"><strong>甜度：</strong></td>
																<td class="txt2" width="228">
																<%
																	for (int i = 1; i < 6; i++) {
																		if(i <= vo.getSweety()) {
																			out.print("★");
																		}else{
																			out.print("☆");
																		}
																	}
																%>
																</td>
															</tr>
															<tr>
																<td class="txt2" valign="top" align="center" height="28">&middot;</td>
																<td class="txt2" colspan="2" height="28"><strong>适用人群：</strong><%=vo.getFit_for() %></td>
															</tr>
														</tbody>
													</table>
													</td>
													<td width="20">&nbsp;</td>
													<td class="txt2" valign="top" width="299">
													<table cellspacing="0" cellpadding="0" width="100%"
														align="center" border="0">
														<tbody>
															<tr>
																<td class="txt2" align="center" height="28">&middot;</td>
																<td class="txt2" height="28"><strong>原料：</strong></td>
															</tr>
															<tr>
																<td align="center" width="15" height="28">&nbsp;</td>
																<td class="txt2" width="269"><%=vo.getMaterial() %></td>
															</tr>
															<tr>
																<td class="txt2" align="center">&middot;</td>
																<td class="txt2"><strong>最佳食用温度：</strong> 10℃</td>
															</tr>
															<tr>
																<td class="txt2" align="center">&middot;</td>
																<td class="txt2"><strong>最佳存放条件：</strong> 5℃存放24小时</td>
															</tr>
														</tbody>
													</table>
													</td>
												</tr>
											</tbody>
										</table>
										</td>
									</tr>
									<tr>
									</tr>
									<tr>
										<td colspan="3" height="35">
										<table cellspacing="0" cellpadding="0" width="600" border="0">
											<tbody>
												<tr>
													<td valign="top" align="right" width="47" height="44"><img
														height="20" alt="" width="43" style="margin-top: 10px"
														src="images/dgzn_fs_13.gif" /></td>
													<td valign="middle" align="right" width="7">&nbsp;</td>
													<td valign="middle" align="left" width="543"><img
														height="2" alt="" width="543" style="margin-top: 10px"
														src="/images/XX.gif" /></td>
												</tr>
											</tbody>
										</table>
										</td>
									</tr>
									<tr>
										<td colspan="3" height="33">
										<table cellspacing="0" cellpadding="0" width="600"
											align="center" border="0">
											<tbody>
												<tr>
													<td class="txt2" valign="top" align="left" width="279">
													<table cellspacing="0" cellpadding="0" width="279"
														align="left" border="0">
														<tbody>
															<tr>
																<td class="txt2" align="center" width="18" height="28">○</td>
																<td class="txt2" width="257" height="28"><strong>蛋糕规格及免费配送餐具：</strong></td>
															</tr>
															<tr>
																<td class="txt2" height="28">&nbsp;</td>
																<td class="txt2" height="28"><span class="yud">1.5磅：适合4-5人食用
																免费配送5套餐具<br />
																2.5磅：适合7-8人食用 免费配送10套餐具<br />
																3.5磅：适合11-12人食用 免费配送15套餐具<br />
																5.5磅：适合18-22人食用 免费配送25套餐具<br />
																10磅 ：适合35-40人食用 免费配送50套餐具</span></td>
															</tr>
														</tbody>
													</table>
													</td>
													<td width="23">&nbsp;</td>
													<td class="txt2" valign="top" width="298">
													<table cellspacing="0" cellpadding="0" width="100%"
														align="center" border="0">
														<tbody>
															<tr>
																<td class="txt2" align="center" width="15" height="28">○</td>
																<td class="txt2" width="269" height="28"><strong>预订时间：</strong></td>
															</tr>
														</tbody>
														<tbody>
															<tr>
																<td class="txt2" height="28">&nbsp;</td>
																<td class="txt2" height="28">
																<p class="yud">1.5磅、2.5磅请提前3小时<br />
																3.5磅、5.5磅请提前24小时<br />
																5.5磅以上的蛋糕请拨打订购热线：4006272727</p>
																</td>
															</tr>
															<tr>
																<td class="txtspecial" valign="top">○</td>
																<td class="txtspecial">备有专用冰包供您外带蛋糕时使用，<br />
																只需付10元取送费用，如需要请在订购时说明</td>
															</tr>
														</tbody>
													</table>
													</td>
												</tr>
											</tbody>
										</table>
										</td>
									</tr>
								</tbody>
							</table>
							</td>
						</tr>
					</table>
					</td>
					<td width="30" valign="top" background="images/3r4.gif"><img
						src="images/3r4.gif" width="30" height="405" /></td>
				</tr>
			</table>
			</td>
		</tr>
</table>
<%
	}
%>
</body>
</html>