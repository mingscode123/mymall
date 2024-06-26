package com.mall.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mall.order.dao.OrderDao;
import com.mall.table.vo.OrderInfoVO;

@Service
public class OrderService {
	@Autowired
	OrderDao dao;
	
	@Transactional
	public int insertOrder(OrderInfoVO vo) throws Exception{
		dao.insertOrderInfo(vo);
		
		//vo.setOrderNo(orderNo);
		
		int cnt2 = dao.inserCartInfo(vo); 
		
		int cnt3 = dao.deleteCartInfo(vo); 
		
		
		return 1;
		
	}
	
	
	
	
	
	
	
}
