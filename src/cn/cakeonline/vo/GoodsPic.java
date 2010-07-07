package cn.cakeonline.vo;

public class GoodsPic {
	private int id;
	private int goods_id;
	private String img_path;
	private String img_small_path;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goodsId) {
		goods_id = goodsId;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String imgPath) {
		img_path = imgPath;
	}
	public GoodsPic(int id, int goodsId, String imgPath, String imgSmallPath) {
		super();
		this.id = id;
		goods_id = goodsId;
		img_path = imgPath;
		img_small_path = imgSmallPath;
	}
	
}
