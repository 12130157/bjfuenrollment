package cn.cakeonline.vo;

public class GoodsType {
	private int id;
	private int goods_id;
	private int type_id;
	private String price;
	public GoodsType(int goodsId, int typeId, String price) {
		goods_id = goodsId;
		type_id = typeId;
		this.price = price;
	}
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
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int typeId) {
		type_id = typeId;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}	
}
