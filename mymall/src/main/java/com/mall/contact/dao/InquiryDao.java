package com.mall.contact.dao;



import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.InquiryInfoVO;


@MapperScan(basePackages="com.mall.contact.dao")
public interface InquiryDao {
	
	
	
	public int insertInquiry(InquiryInfoVO vo) throws Exception;
	
	public int selectTotalInquiryCount(InquiryInfoVO vo) throws Exception;

	public List<InquiryInfoVO> selectMyInquiryList(InquiryInfoVO vo) throws Exception;
	
	public InquiryInfoVO selectInquiryInfo(InquiryInfoVO vo) throws Exception;
}

