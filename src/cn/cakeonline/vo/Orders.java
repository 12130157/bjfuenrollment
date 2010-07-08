package cn.cakeonline.vo;

public class Orders {
	private int order_id;
	private int operated;
	private int address;
	private int user_id;
	private int goods_num;
	private int order_time;
	private double checkout;

	public Orders(int orderId, int operated, int address, int userId,
			int goodsNum, int oreerTime, double checkout) {
		order_id = orderId;
		this.operated = operated;
		this.address = address;
		user_id = userId;
		goods_num = goodsNum;
		order_time = oreerTime;
		this.checkout = checkout;
	}

	public int getOrder_time() {
		return order_time;
	}

	public void setOrder_time(int orderTime) {
		order_time = orderTime;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int orderId) {
		order_id = orderId;
	}

	public int getOperated() {
		return operated;
	}

	public void setOperated(int operated) {
		this.operated = operated;
	}

	public int getAddress() {
		return address;
	}

	public void setAddress(int address) {
		this.address = address;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int userId) {
		user_id = userId;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goodsNum) {
		goods_num = goodsNum;
	}

	public double getCheckout() {
		return checkout;
	}

	public void setCheckout(double checkout) {
		this.checkout = checkout;
	}

}
