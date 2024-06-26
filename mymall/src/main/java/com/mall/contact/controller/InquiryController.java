package com.mall.contact.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.contact.service.InquiryService;
import com.mall.contact.vo.InquiryVO;
import com.mall.table.vo.InquiryInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller

public class InquiryController {

	@Autowired
	InquiryService service;
	
	@RequestMapping("/contact/inquiry")
	public String inquiry() throws Exception {
		return "contact/inquiry";
	} //기본문의화면
	
	@RequestMapping("/contact/FAQ")
	public String FAQ() throws Exception {
		return "contact/FAQ";
	}
	
	@RequestMapping("/contact/myinquiry")
	public String myinquiry() throws Exception {
		return "contact/myinquiry";
	}
	
	@RequestMapping("/contact/searchlist")
	@ResponseBody
	public InquiryVO searchlist(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		
		int totalPage = service.selectTotalInquiryCount(vo); 
		

		List<InquiryInfoVO> list = service.selectMyInquiryList(vo);
		
		InquiryVO inquriryvo = new InquiryVO();
		inquriryvo.setInquirylist(list);
		inquriryvo.setTotal(totalPage); //총 데이터수.
		inquriryvo.setStartPage(vo.getStartPage()); 
		inquriryvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		
		return inquriryvo;
	}
	
	@RequestMapping("/contact/inquiryDetail")
	@ResponseBody
	public InquiryInfoVO inquiryDetail(@ModelAttribute("InquiryVO") InquiryInfoVO vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
	
		vo = service.selectInquiryInfo(vo);
		return vo;
	} // 상세문의보기 
	
	@RequestMapping("/contact/insertInquiry")
	@ResponseBody
	public int insertInquiry(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		
		int cnt = service.insertInquiry(vo);
		return cnt;
	} //문의내용 보내기 
	
	
	
}
