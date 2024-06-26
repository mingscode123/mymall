package com.mall.main.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.main.dao")
public interface MainDao {
	
	public List<GoodsInfoVO> selectHotGoodsList(GoodsInfoVO vo) throws Exception;
	
	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception;
	
	public List<GoodsInfoVO> selectCategoryList(GoodsInfoVO vo) throws Exception;
	
	

}	
