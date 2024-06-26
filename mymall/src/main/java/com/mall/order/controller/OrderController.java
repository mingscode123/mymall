package com.mall.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.GoodsService;
import com.mall.order.service.OrderService;
import com.mall.table.vo.CartInfoVO;
import com.mall.table.vo.OrderInfoVO;
import com.mall.table.vo.UserInfoVO;
import com.mall.user.service.UserService;

@Controller
public class OrderController {
	
	@Autowired	
	OrderService service;
	@Autowired	
	GoodsService cartservice;
	@Autowired	
	UserService userservice;
	
	@RequestMapping("/order/goodsOrder")
	public String goodsOrder() throws Exception {
		return "/order/goodsOrder";
	}
	
	@RequestMapping("/order/cartInfo")
	@ResponseBody
	public List<CartInfoVO> cartInfo(@ModelAttribute("CartInfoVO") CartInfoVO vo, HttpServletRequest request) throws Exception {
		//vo.setUserId("test1");
		
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		
		/*if(vo.getImyn) {  //즉시구매
			return cartservice.selectGoodsInfo(vo);  //goodscd
		}else { //장바구니
			return cartservice.selectCartList(vo);
		}*/
		
		List<CartInfoVO> list = cartservice.selectCartList(vo);
		
		return list;
	}
	
	@RequestMapping("/order/userInfo")
	@ResponseBody
	public UserInfoVO userDetail(@ModelAttribute("UserInfoVO") UserInfoVO vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		vo = userservice.selectUserInfo(vo);
	
		return vo;
	}
	
	@RequestMapping("/goods/order")
	@ResponseBody
	public int cartInfo(@ModelAttribute("OrderInfoVO") OrderInfoVO vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
		
		vo.setUserId(uservo.getUserId());
		int result = service.insertOrder(vo);
		
		return result;
	}
	
	
	
}
