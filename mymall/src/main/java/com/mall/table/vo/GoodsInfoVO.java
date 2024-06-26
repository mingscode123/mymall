package com.mall.table.vo;

import java.util.List;

public class GoodsInfoVO {
	
	private String goodsCd;				//상품코드	
	private String ctCd;				//카테고리코드	
	private String goodsName;			//상품명
	private String normalPrice;			//정상가
	private String sellPrice;			//판매가
	private String ivQty;				//재고수량
	private String goodsStatus;			//상품상태
	private String supplierCd;			//거래처코드
	private String thumnailUrl;			//섬네일이미지
	private String content;				//상세설명
	private String regDt;				//등록일
	
	private String ctName;				//카테고리명
	private String supplierName;		//거래처이름
	
	private String topCt;				//대분류
	private String middleCt;			//중분류
	private String subCt;				//소분류
	
	private String upCtCd;				//상위코드
	private String ctLevel;				//카테고리레벨
	
	private List<CategoryInfoVO> mCategoryList; //중분류카테고리
	private List<CategoryInfoVO> sCategoryList; //소분류카테고리
	
	private List<GoodImgInfoVO> imgList; //상품이미지리스트
	
	
	
	
	
	public List<GoodImgInfoVO> getImgList() {
		return imgList;
	}
	public void setImgList(List<GoodImgInfoVO> imgList) {
		this.imgList = imgList;
	}
	public String getUpCtCd() {
		return upCtCd;
	}
	public void setUpCtCd(String upCtCd) {
		this.upCtCd = upCtCd;
	}
	public String getCtLevel() {
		return ctLevel;
	}
	public void setCtLevel(String ctLevel) {
		this.ctLevel = ctLevel;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getCtCd() {
		return ctCd;
	}
	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}
	public String getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getIvQty() {
		return ivQty;
	}
	public void setIvQty(String ivQty) {
		this.ivQty = ivQty;
	}
	public String getGoodsStatus() {
		return goodsStatus;
	}
	public void setGoodsStatus(String goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public String getSupplierCd() {
		return supplierCd;
	}
	public void setSupplierCd(String supplierCd) {
		this.supplierCd = supplierCd;
	}
	public String getThumnailUrl() {
		return thumnailUrl;
	}
	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getTopCt() {
		return topCt;
	}
	public void setTopCt(String topCt) {
		this.topCt = topCt;
	}
	public String getMiddleCt() {
		return middleCt;
	}
	public void setMiddleCt(String middleCt) {
		this.middleCt = middleCt;
	}
	public String getSubCt() {
		return subCt;
	}
	public void setSubCt(String subCt) {
		this.subCt = subCt;
	}
	public List<CategoryInfoVO> getmCategoryList() {
		return mCategoryList;
	}
	public void setmCategoryList(List<CategoryInfoVO> mCategoryList) {
		this.mCategoryList = mCategoryList;
	}
	public List<CategoryInfoVO> getsCategoryList() {
		return sCategoryList;
	}
	public void setsCategoryList(List<CategoryInfoVO> sCategoryList) {
		this.sCategoryList = sCategoryList;
	}
	
	
	

	
	

		
}
