package cn.cakeonline.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.ResultSet;

import cn.cakeonline.vo.AddressVO;

public class AddressDAO extends DAO{
	/**
	 * 添加记录
	 * @param vo
	 * @return
	 */
	public boolean add(AddressVO vo) {
		Connection conn = this.getConn();
		PreparedStatement ps = null;
		// 如果数据库连接成功，则进行SQL操作
		String sql = "INSERT INTO address(user_id, receiptor, postcode, telephone, mobile, building, detail)"
				+ " values(?,?,?,?,?,?,?)";
		try {
			AddressVO v = vo;
			ps = conn.prepareStatement(sql);
			ps.setInt(1, v.getUser_id());
			ps.setString(2, v.getReceiptor());
			ps.setString(3, v.getPostcode()); 
			ps.setString(4, v.getTelephone());
			ps.setString(5, v.getMobile());
			ps.setString(6, v.getBuilding());
			ps.setString(7, v.getDetail());
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
		// 如果数据库连接成功，则进行SQL操作
		String sql = "SELECT * FROM address order by address_id desc limit 1";
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
