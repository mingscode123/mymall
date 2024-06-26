package com.mall.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.main.dao.MainDao;
import com.mall.table.vo.GoodsInfoVO;

@Service
public class MainService {
	@Autowired
	MainDao dao;
	
	public List<GoodsInfoVO> selectHotGoodsList(GoodsInfoVO vo) throws Exception{
		return dao.selectHotGoodsList(vo);
	}
	
	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodsList(vo);
	}
	
	public List<GoodsInfoVO> selectCategoryList(GoodsInfoVO vo) throws Exception{
		return dao.selectCategoryList(vo);
	}
	
	
	
	
	
	
	
}
