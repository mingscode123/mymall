package com.mall.table.vo;

public class CartInfoVO {
	private String userId;			//회원ID	
	private String goodsCd;			//상품코드
	private String buyQty;			//수량
	private String regDt;			//등록일
	private String goodsName;		//상품명
	private String thumnailUrl;		//섬네일
	private String sellPrice;		//판매가
	
	
	
	
	public String getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getThumnailUrl() {
		return thumnailUrl;
	}
	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	
	
}
