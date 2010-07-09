package cn.cakeonline.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.cakeonline.dao.AddressDAO;
import cn.cakeonline.dao.OrdersDAO;
import cn.cakeonline.dao.OrdersGoodsDAO;
import cn.cakeonline.vo.AddressVO;
import cn.cakeonline.vo.Orders;
import cn.cakeonline.vo.OrdersGoods;
import cn.cakeonline.vo.UserVO;

/**
 * Servlet implementation class UserCheckout
 */
public class UserCheckout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String receiptor = request.getParameter("receiptor").trim();
		String detail = request.getParameter("detail").trim();
		String postcode = "";
		String telephone = request.getParameter("telephone").trim();
		String mobile = request.getParameter("mobile").trim();
		String building = "";
		double total = Double.parseDouble(request.getParameter("total"));

		int time = (int) Math.round(System.currentTimeMillis() / 1000); // 毫秒级时间戳转换成秒数级
		int orderId = 0;  // 订单号
		
		// 获取session
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		ArrayList<OrdersGoods> li = (ArrayList<OrdersGoods>) session
				.getAttribute("cartlist");

		// 添加收货地址
		AddressVO addVo = new AddressVO(0, user.getUserId(), receiptor,
				postcode, telephone, mobile, building, detail);
		AddressDAO addDao = new AddressDAO();
		boolean s1 = addDao.add(addVo);
		// 添加地址成功
		if (s1) {
			int address = addDao.getLastId();
			// 生成订单
			Orders vo = new Orders(0, 0, address, user.getUserId(), li.size(),
					time, total);
			OrdersDAO oDao = new OrdersDAO();
			boolean suc = oDao.add(vo);
			if(suc) {
				// 订单添加成功，取订单号
				orderId = oDao.getLastId(); 
			}
		}

		// session里的商品
		// 添加商品订单
		int goods = 0;
		for (int i = 0; i < li.size(); i++) {
			OrdersGoods og = li.get(i);
			og.setOrder_id(orderId);
			OrdersGoodsDAO ogDao = new OrdersGoodsDAO();
			boolean a = ogDao.add(og);
			if (a) {
				goods += 1;
			}
		}
		if(goods == li.size()) {
			// 添加成功
			response.sendRedirect("finish.jsp");
		}

	}

}
