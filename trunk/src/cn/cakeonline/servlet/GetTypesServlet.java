package cn.cakeonline.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.cakeonline.dao.TypeDAO;
import cn.cakeonline.vo.TypeVO;

/**
 * Servlet implementation class GetTypesServlet
 */
public class GetTypesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		TypeDAO dao = new TypeDAO();
		List<TypeVO> li = (List<TypeVO>) dao.getTypes();
		if (!li.isEmpty()) {
			request.setAttribute("list", li);
			request.getRequestDispatcher("addgoods.jsp").forward(request,
					response);
		}

	}

}
