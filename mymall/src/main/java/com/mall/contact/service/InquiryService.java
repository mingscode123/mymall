package com.mall.contact.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.contact.dao.InquiryDao;
import com.mall.table.vo.InquiryInfoVO;


@Service
public class InquiryService {

	@Autowired
	InquiryDao dao;
	

	
	
	public int insertInquiry(InquiryInfoVO vo) throws Exception{
		return dao.insertInquiry(vo);
	}
	
	public int selectTotalInquiryCount(InquiryInfoVO vo) throws Exception{
		return dao.selectTotalInquiryCount(vo);
	}
	
	public List<InquiryInfoVO> selectMyInquiryList(InquiryInfoVO vo) throws Exception{
		return dao.selectMyInquiryList(vo);
	}
	
	public InquiryInfoVO selectInquiryInfo(InquiryInfoVO vo) throws Exception{
		return dao.selectInquiryInfo(vo);
	}
	
	
	
	
	
	
}
