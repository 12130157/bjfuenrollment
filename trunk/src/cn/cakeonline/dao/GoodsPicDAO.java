package cn.cakeonline.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
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
}
