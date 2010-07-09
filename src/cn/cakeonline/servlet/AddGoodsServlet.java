package cn.cakeonline.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.cakeonline.dao.GoodsDAO;
import cn.cakeonline.dao.GoodsPicDAO;
import cn.cakeonline.dao.GoodsTypeDAO;
import cn.cakeonline.vo.GoodsPic;
import cn.cakeonline.vo.GoodsVO;

public class AddGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置提交表单的编码
		request.setCharacterEncoding("UTF-8");
		// 获取客户端session对象，用于储存商品名
		HttpSession session = request.getSession();
		// 获取客户端传来的参数值
		String name = request.getParameter("name");
		String desc = request.getParameter("descri");
		int type = 4;
		int pics = 0;
		String taste = request.getParameter("taste");
		String material = request.getParameter("material");
		int sweety = Integer.parseInt(request.getParameter("sweety"));
		

		// 获取四种价格:获取Form数组的方法如下：
		String[] price = request.getParameterValues("price");

		// 构造VO
		GoodsVO gvo = new GoodsVO(0, name, desc, type, 0, pics, taste, sweety,
				"", material, 0);
		// 构造List
		List<GoodsVO> arr = new ArrayList<GoodsVO>();
		arr.add(gvo); // 将VO加至List

		GoodsDAO gdao = new GoodsDAO();
		boolean suc = gdao.add(arr);
		// 先添加商品，再通过该商品ID设置与之相关属性
		if (suc) {
			int gid = gdao.getLastId();
			// 为商品设置图片
			String pic = request.getParameter("pic");
			GoodsPic gp = new GoodsPic(0, gid, pic, "");
			GoodsPicDAO dpdao = new GoodsPicDAO();
			boolean adpSuccess = dpdao.add(gp);
			// 为商品设置价格
			boolean s = makePrice(gid, price);
			if (s && adpSuccess) {
				// 设置返回给客户端的参数值
				session.setAttribute("gname", name);
				session.setAttribute("gid", gid);
				// 跳转
				response.sendRedirect("addsuccess.jsp");
				return;
			}
		}
		session.setAttribute("error", "添加商品失败！");
		response.sendRedirect("gettypes.do");
		return;
	}

	/**
	 * 为商品不同规格设定价格
	 * @param id int 商品ID
	 * @param price String[]5种价格
	 * @return true|false
	 */
	public boolean makePrice(int id, String[] price) {
		GoodsTypeDAO dao = new GoodsTypeDAO();
		boolean s = dao.add(id, price);
		return s;
	}

}
