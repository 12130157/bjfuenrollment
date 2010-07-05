package cn.cakeonline.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

import cn.cakeonline.vo.GoodsVO;

public class GoodsDAO extends DAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ps;

	/**
	 * 测试方法
	 * 
	 * @param arr
	 * @return
	 */
	public String test(List<GoodsVO> arr) {
		conn = this.getConn();
		// 如果数据库连接成功，则进行SQL操作
		// SQL语句
		String test = "SELECT * FROM goods";
		try {
			ps = conn.prepareStatement(test);
			rs = (ResultSet) ps.executeQuery();

			while (rs.next()) {
				String name = rs.getString("goods_name");
				return name;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "char";
	}

	/**
	 * 添加商品
	 * 
	 * @param arr
	 * @return boolean
	 */
	public boolean add(List<GoodsVO> arr) {
		conn = this.getConn();
		// 如果数据库连接成功，则进行SQL操作
		String sql = "INSERT INTO goods(name, descri, type, is_promoted, pics, taste, sweety, fit_for, material, related)"
				+ " values(?,?,?,?,?,?,?,?,?,?)";
		try {
			GoodsVO v = arr.get(0);
			ps = conn.prepareStatement(sql);
			ps.setString(1, v.getName());
			ps.setString(2, v.getDescri());
			ps.setInt(3, 4);
			ps.setInt(4, 0);
			ps.setInt(5, 0);
			ps.setString(6, v.getTaste());
			ps.setInt(7, v.getSweety());
			ps.setString(8, "所有人群");
			ps.setString(9, v.getMaterial());
			ps.setInt(10, 0);
			int result = (int) ps.executeUpdate();
			if(result != -1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
