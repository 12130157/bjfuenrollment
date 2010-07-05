package cn.cakeonline.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.cakeonline.dao.GoodsDAO;
import cn.cakeonline.vo.GoodsVO;

public class AddGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置提交表单的中文编码
		request.setCharacterEncoding("UTF-8");
		// 获取客户端传来的参数值
		String name = request.getParameter("name");
		String desc = request.getParameter("descri");
		int type = 4;
		int pics = 0;
		String taste = request.getParameter("taste");
		String material = request.getParameter("material");
		int sweety = Integer.parseInt(request.getParameter("sweety"));

		// 构造VO
		GoodsVO gvo = new GoodsVO(name, desc, type, pics, taste, sweety, material,
				0, null);
		// 构造List
		List<GoodsVO> arr = new ArrayList<GoodsVO>();
		arr.add(gvo); // 将VO加至List

		GoodsDAO gdao = new GoodsDAO();

		boolean suc = gdao.add(arr);
		if (suc) {
			// 设置返回给客户端的参数值
			request.setAttribute("gname", name);
			// 跳转
			request.getRequestDispatcher("addsuccess.jsp").forward(request,
					response);
		} else {
			response.sendRedirect("gettypes.do");
		}
	}

}
