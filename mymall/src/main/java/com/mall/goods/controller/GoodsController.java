package com.mall.goods.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.GoodsService;
import com.mall.table.vo.CartInfoVO;
import com.mall.table.vo.GoodImgInfoVO;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller	
public class GoodsController {
	
	@Autowired	
	GoodsService service;
	
	@RequestMapping("/goods/view")
	public String view(@ModelAttribute GoodsInfoVO vo, Model model) throws Exception {
		model.addAttribute("vo", vo);
		return "goods/goodsinfo";
	}
	
	@RequestMapping("/goods/cart")
	public String cart() throws Exception {
		return "goods/cart";
	}

	
	@RequestMapping("/goods/goodsDetail")
	@ResponseBody
	public GoodsInfoVO goodsDetail(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		vo = service.selectGoodDetail(vo);
		
		List<GoodImgInfoVO> list = service.selectGoodsImg(vo);
		
		vo.setImgList(list);
		return vo;
	}
	
	@RequestMapping("/goods/addToCart")
	@ResponseBody
	public int addToCart(@ModelAttribute("CartInfoVO") CartInfoVO vo, HttpServletRequest request) throws Exception {
		
		//vo.setUserId("test1");
		
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		
		int cnt = service.selectCartCount(vo); //해당 상품이 장바구니에 이미 담겨있는지 확인
		if(cnt == 0) {
		  cnt = service.insertToCart(vo);	//없다면 장바구니에 insert
		}else {
			cnt = -1; 
		}
		return cnt;
	}
	
	@RequestMapping("/goods/cartInfo")
	@ResponseBody
	public List<CartInfoVO> cartInfo(@ModelAttribute("CartInfoVO") CartInfoVO vo , HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");	
		
		vo.setUserId(uservo.getUserId());
		List<CartInfoVO> list = service.selectCartList(vo);
		
		return list;
	}
	
	@RequestMapping("/goods/deleteGoods")
	@ResponseBody
	public int deleteCartInfo(@ModelAttribute("CartInfoVO") CartInfoVO vo , HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		
		int cnt = service.deleteCartInfo(vo);
		return cnt;
	}
	
	@RequestMapping("/goods/updateBuyQty")
	@ResponseBody
	public int updateBuyQty(@ModelAttribute("CartInfoVO") CartInfoVO vo , HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		int cnt = service.updateBuyQty(vo);
		return cnt;
	}
}
