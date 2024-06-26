package com.mall.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.goods.dao.GoodsDao;
import com.mall.table.vo.CartInfoVO;
import com.mall.table.vo.GoodImgInfoVO;
import com.mall.table.vo.GoodsInfoVO;

@Service
public class GoodsService {
	@Autowired
	GoodsDao dao;
	
	
	public GoodsInfoVO selectGoodDetail(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodDetail(vo);
	}
	
	public List<GoodImgInfoVO> selectGoodsImg(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodsImg(vo);
	}
	
	public int selectCartCount(CartInfoVO vo) throws Exception{
		return dao.selectCartCount(vo);
	}
	
	public int insertToCart(CartInfoVO vo) throws Exception{
		return dao.insertToCart(vo);
	}
	
	public List<CartInfoVO> selectCartList(CartInfoVO vo) throws Exception{
		return dao.selectCartList(vo);
	}
	
	public int deleteCartInfo(CartInfoVO vo) throws Exception{
		return dao.deleteCartInfo(vo);
	}
	
	public int updateBuyQty(CartInfoVO vo) throws Exception{
		return dao.updateBuyQty(vo);
	}
	
	
	
	
	
}
