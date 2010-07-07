package cn.cakeonline.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.cakeonline.dao.GoodsTypeDAO;
import cn.cakeonline.vo.OrdersGoods;

/**
 * 添加至购物车
 * 有容错处理
 * @author Wendy
 *
 */
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置提交表单的编码
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("id") == null) {
			response.sendRedirect("../404.html");
			return;
		}
		// 商品ID
		String sid = request.getParameter("id");
		if (sid.equals("")) {
			response.sendRedirect("404.html");
			return;
		}
		// 获取表单
		int id = Integer.parseInt(sid);
		int num = Integer.parseInt(request.getParameter("num"));
		int type = Integer.parseInt(request.getParameter("type"));

		// 设置GoodsTypeVO
		GoodsTypeDAO gtd = new GoodsTypeDAO();
		double total = gtd.getPrice(id, type);
		OrdersGoods newOne = new OrdersGoods(0, 0, id, type, num, total);

		// 获取Session
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			session.setAttribute("error", "您还没有登录，请先登录！");
			response.sendRedirect("login.jsp");
			return;
		} else {
			// 已经登录
			// 设置list存储订单
			ArrayList<OrdersGoods> list = new ArrayList();
			if (session.getAttribute("cartlist") != null) {
				// 购物车里已有商品
				list = (ArrayList<OrdersGoods>) session
						.getAttribute("cartlist");
				boolean flag = false; // 判断session中是否已存在此商品
				for (int i = 0; i < list.size(); i++) {
					OrdersGoods og = list.get(i);
					if (og.getId() == id) {
						// session中已存在这个商品，数量加1
						og.setNum(og.getNum() + 1);
					}
				}
				if (!flag) {
					// 不存在此商品，将VO加入list
					list.add(newOne);
				}
			} else {
				// 购物车里没有商品，则将VO加入List
				list.add(newOne);
			}
			session.setAttribute("cartlist", list);
			response.sendRedirect("cart.jsp");
			return;
		}
	}

}
