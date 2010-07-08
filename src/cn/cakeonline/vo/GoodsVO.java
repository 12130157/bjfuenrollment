package cn.cakeonline.vo;

public class GoodsVO {
	private int goodsId;
	private String name;
	private String descri;
	private int type;
	private int is_promoted;
	private int pics;
	private String taste;
	private int sweety;
	private String fit_for; // 适用人群
	private String material; // 原料
	private int related; // 相关产品

	public GoodsVO(int goodsId, String name, String descri, int type,
			int isPromoted, int pics, String taste, int sweety, String fitFor,
			String material, int related) {
		super();
		this.goodsId = goodsId;
		this.name = name;
		this.descri = descri;
		this.type = type;
		is_promoted = isPromoted;
		this.pics = pics;
		this.taste = taste;
		this.sweety = sweety;
		fit_for = fitFor;
		this.material = material;
		this.related = related;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescri() {
		return descri;
	}

	public void setDescri(String descri) {
		this.descri = descri;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getPics() {
		return pics;
	}

	public void setPics(int pics) {
		this.pics = pics;
	}

	public String getTaste() {
		return taste;
	}

	public void setTaste(String taste) {
		this.taste = taste;
	}

	public int getSweety() {
		return sweety;
	}

	public void setSweety(int sweety) {
		this.sweety = sweety;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public int getRelated() {
		return related;
	}

	public void setRelated(int related) {
		this.related = related;
	}

	public String getFit_for() {
		return fit_for;
	}

	public void setFit_for(String fitFor) {
		fit_for = fitFor;
	}

	public int getIs_promoted() {
		return is_promoted;
	}

	public void setIs_promoted(int isPromoted) {
		this.is_promoted = isPromoted;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

}
