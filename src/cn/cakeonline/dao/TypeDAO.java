package cn.cakeonline.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.cakeonline.vo.TypeVO;

public class TypeDAO extends DAO{
	/**
	 * 获取所有规格Type
	 * 返回TypeVO对象的ArrayList
	 * @return
	 */
	public List<TypeVO> getTypes() {
		// 用一个Hash列表存储type值
		List<TypeVO> li = null;
		ResultSet rs = this.query("select * from type");
		try {
			li = new ArrayList<TypeVO>();
			while(rs.next()) {
				TypeVO vo = new TypeVO(rs.getInt(1), rs.getString(2));
				li.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return li;
	}
	
	/**
	 * 根据typeID查询规格
	 * @param id
	 * @return String
	 */
	public String getOne(int id) {
		String type = "";
		String sql = "select * from type where type_id = " + id;
		ResultSet rs = this.query(sql);
		try {
			if(rs.next()) {
				type = rs.getString(2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return type;
	}
}
