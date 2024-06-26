package com.mall.contact.vo;

import java.util.List;

import com.mall.table.vo.InquiryInfoVO;
import com.mall.table.vo.PageVO;

public class InquiryVO extends PageVO {

	private List<InquiryInfoVO> inquirylist;

	public void setInquirylist(List<InquiryInfoVO> inquirylist) {
		this.inquirylist = inquirylist;
	}
	
	
	public List<InquiryInfoVO> getInquirylist() {
		return inquirylist;
	}

	
	
	
}
