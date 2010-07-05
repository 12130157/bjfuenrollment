package cn.cakeonline.vo;

public class AddressVO {
	private int address_id;
	private int user_id;
	private String receiptor;
	private String postcode;
	private String telephone;
	private String mobile;
	private String building;
	private String detail;
	public AddressVO(int addressId, int userId, String receiptor,
			String postcode, String telephone, String mobile, String building,
			String detail) {
		super();
		address_id = addressId;
		user_id = userId;
		this.receiptor = receiptor;
		this.postcode = postcode;
		this.telephone = telephone;
		this.mobile = mobile;
		this.building = building;
		this.detail = detail;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int addressId) {
		address_id = addressId;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getReceiptor() {
		return receiptor;
	}
	public void setReceiptor(String receiptor) {
		this.receiptor = receiptor;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
}
