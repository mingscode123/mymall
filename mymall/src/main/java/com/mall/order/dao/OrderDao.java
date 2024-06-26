package com.mall.order.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.mall.order.dao")
public interface OrderDao {
	

	//public String insertOrderInfo(OrderInfoVO vo) throws Exception;
	public void insertOrderInfo(OrderInfoVO vo) throws Exception;
	
	public int inserCartInfo(OrderInfoVO vo) throws Exception;
	
	public int deleteCartInfo(OrderInfoVO vo) throws Exception;
	
	

}	
