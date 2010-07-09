package cn.cakeonline.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cn.cakeonline.vo.OrdersGoods;

public class OrdersGoodsDAO extends DAO{

	/**
	 * 添加记录
	 * @param og
	 * @return
	 */
	public boolean add(OrdersGoods og) {
		Connection conn = this.getConn();
		PreparedStatement ps = null;
		// 如果数据库连接成功，则进行SQL操作
		String sql = "INSERT INTO orders_goods(order_id, goods_id, type_id, num, total)"
				+ " values(?,?,?,?,?)";
		try {
			OrdersGoods v = og;
			ps = conn.prepareStatement(sql);
			ps.setInt(1, v.getOrder_id());
			ps.setInt(2, v.getGoods_id());
			ps.setInt(3, v.getType_id()); 
			ps.setInt(4, v.getNum());
			ps.setDouble(5, v.getTotal());
			int result = (int) ps.executeUpdate();
			if (result != -1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
