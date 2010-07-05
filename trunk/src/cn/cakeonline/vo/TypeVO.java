package cn.cakeonline.vo;

public class TypeVO {
	private int typeId;
	private String typeName;
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	/**
	 * @param typeId
	 * @param typeName
	 */
	public TypeVO(int typeId, String typeName) {
		this.typeId = typeId;
		this.typeName = typeName;
	}
	
}
