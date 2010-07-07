package cn.cakeonline.vo;

public class OrdersGoods {
	private int id;
	private int order_id;
	private int goods_id;
	private int type_id;
	private int num;
	private double total;

	public OrdersGoods(int id, int orderId, int goodsId, int typeId, int num,
			double total) {
		super();
		this.id = id;
		order_id = orderId;
		goods_id = goodsId;
		type_id = typeId;
		this.num = num;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int orderId) {
		order_id = orderId;
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
