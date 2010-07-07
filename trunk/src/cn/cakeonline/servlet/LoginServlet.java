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
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取参数值并用trim函数去空格
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String uip = request.getRemoteAddr(); // 获取客户端IP地址 
		int time = (int) Math.round(System.currentTimeMillis()/1000); // 毫秒级时间戳转换成秒数级
		HttpSession session = request.getSession();
		
		// 判断不为空
		if(!username.isEmpty() && !password.isEmpty()) {
			// 长度均小于20
			if(username.length() < 20 && password.length() < 20 ) {
				// 构造VO，因为DAO中需要
				UserVO uvo = new UserVO(0, username, password, "", 0, "", time, uip, 0);
				UserDAO dao = new UserDAO();
				boolean suc = dao.login(uvo); // 调用DAO登录函数
				if(suc) { //登录成功
					session.setAttribute("username", username);
					// 获取登录user对象
					UserVO user = dao.getUser(username);
					if(user != null) {
						// 并存到session中
						session.setAttribute("user", user);
					}else{
						session.setAttribute("user", null);
					}
					session.setAttribute("error", null);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}else{
					session.setAttribute("error", "用户名或密码错误");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}else{
				session.setAttribute("error", "用户名或密码长度过长");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else{
			session.setAttribute("error", "用户名或密码不能为空！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
