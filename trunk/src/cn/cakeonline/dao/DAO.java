package cn.cakeonline.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class DAO {
	private final String HOST = "jdbc:mysql://localhost:3306/cakeonline";
	private final String USERNAME = "root";
	private final String PASSWORD = "qeephp";

	/**
	 * 连接数据库
	 * 
	 * @return
	 */
	public Connection getConn() {
		Connection conn = null;
		// 加载驱动程序以连接数据库
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection(HOST, USERNAME,
					PASSWORD);
			return conn;
		}
		// 捕获加载驱动程序异常
		catch (ClassNotFoundException cnfex) {
			System.err.println("装载 JDBC/ODBC 驱动程序失败");
			cnfex.printStackTrace();
			System.exit(1); // terminate program
		}
		// 捕获连接数据库异常
		catch (SQLException sqlex) {
			System.err.println("无法连接数据");
			sqlex.printStackTrace();
			System.exit(1); // terminate program
		}
		return null;
	}

	/**
	 * 执行sql语句，并返回ResultSet 该SQL语句是一个完整的字符串语句，不带参数
	 * 
	 * @param sql
	 *            String SQL语句
	 * @return ResultSet || null
	 */
	public ResultSet query(String sql) {
		// SQL语句
		try {
			PreparedStatement ps = (PreparedStatement) this.getConn()
					.prepareStatement(sql);
			ResultSet rs = (ResultSet) ps.executeQuery();
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
