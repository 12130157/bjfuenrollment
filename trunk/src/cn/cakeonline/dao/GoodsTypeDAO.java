package cn.cakeonline.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class GoodsTypeDAO extends DAO {

	public boolean add(int goodsId, String[] price) {
		Connection conn = this.getConn();
		int rs = 0;
		if (conn != null) {
			for (int i = 0; i < price.length; i++) {
				String sql = "INSERT INTO goods_type(goods_id, type_id, price) "
						+ "values(?,?,?)";
				try {
					PreparedStatement ps = conn.prepareStatement(sql);
					ps.setInt(1, goodsId);
					ps.setInt(2, i + 1);
					ps.setString(3, price[i]);
					rs += ps.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
					return false;
				}
			}
			if (rs == 5) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 根据商品ID和规格ID获取价格
	 * @param id Int 商品ID
	 * @param type int 规格ID
	 * @return double price
	 */
	public double getPrice(int id, int type) {
		String sql = "SELECT * FROM goods_type WHERE goods_id =" + id
				+ " AND type_id =" + type;
		ResultSet rs = this.query(sql);
		try {
			if(rs.next()) {
				return rs.getDouble(4);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
