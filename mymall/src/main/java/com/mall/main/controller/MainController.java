package com.mall.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.main.service.MainService;
import com.mall.table.vo.GoodsInfoVO;

@Controller
public class MainController {
	
	@Autowired	
	MainService service;
	@RequestMapping("/")
	public String main() throws Exception {
		return "main";
	}
	
	@RequestMapping("/main/hotItem")
	@ResponseBody
	public List<GoodsInfoVO> hotItem(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectHotGoodsList(vo);
		
		return list;
	}
	
	@RequestMapping("/main/displaygoods")
	@ResponseBody
	public List<GoodsInfoVO> displaygoods(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectGoodsList(vo);
		
		return list;
	}
	
	@RequestMapping("/main/category")
	@ResponseBody
	public List<GoodsInfoVO> category(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectCategoryList(vo);
		
		return list;
	}
	
	
}
