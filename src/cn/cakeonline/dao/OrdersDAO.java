package cn.cakeonline.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cn.cakeonline.vo.Orders;

/**
 * 与订单表orders交互的逻辑操作
 * 
 * @author Wendy
 * 
 */
public class OrdersDAO extends DAO {
	/**
	 * 根据用户ID获取订单
	 * @param userId
	 * @return ArrayList<Orders>
	 */
	public ArrayList<Orders> getOrders(int userId) {
		String sql = "SELECT * FROM orders WHERE user_id = " + userId + " ORDER BY order_time desc";
		ResultSet rs = this.query(sql);
		// 用list存储用户订单
		ArrayList<Orders> list = new ArrayList<Orders>();
		try {
			while (rs.next()) {
				Orders vo = new Orders(rs.getInt(1), rs.getInt(2),
						rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6),
						rs.getDouble(7));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 获取所有订单
	 * order by operated desc,order_time desc
	 * @return
	 */
	public ArrayList<Orders> getAll() {
		String sql = "SELECT * FROM orders ORDER BY order_time DESC,operated asc";
		ResultSet rs = this.query(sql);
		// 用list存储用户订单
		ArrayList<Orders> list = new ArrayList<Orders>();
		try {
			while (rs.next()) {
				Orders vo = new Orders(rs.getInt(1), rs.getInt(2),
						rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6),
						rs.getDouble(7));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 添加订单
	 * @param vo
	 * @return
	 */
	public boolean add(Orders vo) {
		Connection conn = this.getConn();
		PreparedStatement ps = null;
		// 如果数据库连接成功，则进行SQL操作
		String sql = "INSERT INTO orders(address, user_id, goods_num, order_time, checkout)"
				+ " values(?,?,?,?,?,?,?)";
		try {
			Orders v = vo;
			ps = conn.prepareStatement(sql);
			ps.setInt(1,v.getAddress() );
			ps.setInt(2, v.getUser_id());
			ps.setInt(3, v.getGoods_num()); 
			ps.setInt(4, v.getOrder_time());
			ps.setDouble(5, v.getCheckout());
			int result = (int) ps.executeUpdate();
			if (result != -1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public int getLastId() {
		String sql = "SELECT * FROM orders order by order_id desc limit 1";
		ResultSet rs = this.query(sql);
		try {
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
