package cn.cakeonline.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.cakeonline.dao.UserDAO;
import cn.cakeonline.vo.UserVO;

public class RegisterServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username").trim();
		String nickname = request.getParameter("nickname").trim();
		String password = request.getParameter("password").trim();
		String repassword = request.getParameter("repassword").trim();

		String uip = request.getRemoteAddr();
		int time = (int) Math.round(System.currentTimeMillis() / 1000);
		HttpSession session = request.getSession();
		// 判断不为空
		if (username.isEmpty() || nickname.isEmpty() || password.isEmpty()) {
			session.setAttribute("error",
					"<font color='red'>用户名或密码不能为空!</font>");
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		} else if (username.length() > 20 || username.length() < 4) {
			session.setAttribute("error",
					"<font color='red'>对不起,用户名长度不在4~20之间！</font>");
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		} else if (password.length() > 20 || password.length() < 6) {
			session.setAttribute("error",
					"<font color='red'>对不起,密码名长度不在4~20之间！</font>");
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		} else if (password != repassword) {
			session.setAttribute("error",
					"<font color='red'>对不起,两次密码不相同！</font>");
			request.getRequestDispatcher("register.jsp").forward(request,
					response);
		} else {
			UserVO uvo = new UserVO(0, username, nickname, password, 0, "",
					time, uip, 0);
			UserDAO dao = new UserDAO();
			UserVO suc = null;
			try {
				suc = dao.getUser(username);
			} catch (Exception e) {
				e.printStackTrace();
			} // 调用DAO登录函数
			if (suc == null) { // 成功
				boolean success = dao.addUser(uvo);
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
			}
		}

	}

}
