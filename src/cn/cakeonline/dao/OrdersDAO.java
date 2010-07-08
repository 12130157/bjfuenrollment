package cn.cakeonline.dao;

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
}
