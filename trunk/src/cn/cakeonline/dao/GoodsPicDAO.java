package cn.cakeonline.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.cakeonline.vo.GoodsPic;

/**
 * 商品图片的数据库交互操作类
 * @author Wendy
 *
 */
public class GoodsPicDAO extends DAO {
	/**
	 * 增加图片
	 * @param gp GoodsPic类
	 * @return
	 */
	public boolean add(GoodsPic gp) {
		String sql = "INSERT INTO goods_pic(goods_id,img_path) VALUES (?,?)";
		Connection conn = this.getConn();
		if(conn != null) {
			PreparedStatement ps;
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, gp.getGoods_id());
				ps.setString(2, gp.getImg_path());
				int rs = ps.executeUpdate();
				if(rs != -1) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/**
	 * 根据商品ID获取图片路径
	 * @param id
	 * @return
	 */
	public String getPic(int id) {
		String pic = "";
		String sql = "SELECT * FROM goods_pic WHERE goods_id = " + id;
		ResultSet rs = this.query(sql);
		try {
			if(rs.next()) {
				pic = rs.getString(3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pic;
	}
}
