package cn.cakeonline.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.cakeonline.dao.UserDAO;
import cn.cakeonline.vo.UserVO;
/**
 * 更新用户信息的Servlet
 * @author wendy
 *
 */
public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("user");
		if(uvo == null) {
			session.setAttribute("error", "您还没有登录！");
			response.sendRedirect("login.jsp");
			return;
		}
		
		int uid = Integer.parseInt(request.getParameter("user_id"));
		String nickname = request.getParameter("nickname");
		int gender = Integer.parseInt(request.getParameter("gender"));
		String email = request.getParameter("email");
		
		if(uvo.getUserId() == uid) {
			// 验证为当前用户
			// 更新VO
			if(nickname.trim().length() > 0) {
				uvo.setNickname(nickname);
			}
			uvo.setGender(gender);
			if(email.trim().length() > 0) {
				uvo.setEmail(email);
			}
			// 调用DAO
			UserDAO dao = new UserDAO();
			boolean s = dao.updateUser(uvo);
			if(s) {
				session.setAttribute("msg", "个人信息设定成功");
				response.sendRedirect("info.jsp");
			}else {
				session.setAttribute("msg", "个人信息设定失败，数据库连接错误");
				response.sendRedirect("info.jsp");
			}
		}else{
			response.sendRedirect("../404.html");
		}
		
	}

}
