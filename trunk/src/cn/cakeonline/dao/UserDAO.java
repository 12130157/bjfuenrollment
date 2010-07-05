package cn.cakeonline.dao;

import java.sql.SQLException;
import java.util.List;

import cn.cakeonline.daoinf.UserDaoInf;
import cn.cakeonline.vo.UserVO;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

/**
 * 用户表users与数据库的交互操作
 * 
 * @author Administrator
 * 
 */
public class UserDAO extends DAO implements UserDaoInf {
	private Connection conn;

	@Override
	public UserVO getUser(String userName) throws Exception {
		// 获取当前数据库连接
		String sql = "select * from users where username = ?";
		try {
			PreparedStatement ps = (PreparedStatement) this.getConn()
					.prepareStatement(sql);
			ps.setString(0, userName);
			ResultSet rs = (ResultSet) ps.executeQuery();
			if (rs.next()) {
				// 如果有记录数
				UserVO vo = new UserVO(rs.getInt(0), rs.getString(1), rs
						.getString(2), rs.getString(3), rs.getInt(4), rs
						.getString(5), rs.getInt(6), rs.getString(7), rs
						.getInt(8));
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean login(UserVO user) {
		// 获取当前数据库连接
		conn = this.getConn();
		String sql = "select * from users where username = ? and password = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn
					.prepareStatement(sql);
			// 设置为VO的用户名和密码
			String name = user.getUsername();
			String pwd = user.getPassword();
			ps.setString(1, name);
			ps.setString(2, pwd);
			// 执行sql语句，返回rs集
			ResultSet rs = (ResultSet) ps.executeQuery();
			if (rs.next()) {
				// 如果有记录数，更新登录时间和IP
				String newSql = "update users set last_login_at = ? and last_login_ip = ? where user_id = ?";
				try {
					PreparedStatement newPs = (PreparedStatement) conn
							.prepareStatement(newSql);
					newPs.setInt(1, user.getLastLoginAt());
					newPs.setString(2, user.getLastLoginIp());
					newPs.setInt(3, rs.getInt(1));
					int count =  newPs.executeUpdate();
					if (count != -1) {
						return true;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean addUser(UserVO user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String userId) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<UserVO> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO queryUser(String userId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUser(UserVO user) {
		// TODO Auto-generated method stub
		return 0;
	}
}
