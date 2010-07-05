package cn.cakeonline.vo;

public class Type {
	private int type_id;
	private String type_name;
	public Type(int typeId, String typeName) {
		super();
		type_id = typeId;
		type_name = typeName;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int typeId) {
		type_id = typeId;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String typeName) {
		type_name = typeName;
	}
	
}
