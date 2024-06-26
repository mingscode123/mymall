package com.mall.table.vo;

public class CategoryInfoVO {
	
	private String ctCd;			//카테고리코드	
	private String ctName;			//카테고리명
	private String ctLevel;			//레벨
	private String upCtCd;			//상위카테고리코드
	private String regDt;			//등록일
	
	
	public String getCtCd() {
		return ctCd;
	}
	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getCtLevel() {
		return ctLevel;
	}
	public void setCtLevel(String ctLevel) {
		this.ctLevel = ctLevel;
	}
	public String getUpCtCd() {
		return upCtCd;
	}
	public void setUpCtCd(String upCtCd) {
		this.upCtCd = upCtCd;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
		
}
