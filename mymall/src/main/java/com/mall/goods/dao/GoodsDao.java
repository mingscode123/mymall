package com.mall.goods.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.CartInfoVO;
import com.mall.table.vo.GoodImgInfoVO;
import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.goods.dao")
public interface GoodsDao {
	
	
	public GoodsInfoVO selectGoodDetail(GoodsInfoVO vo) throws Exception;
	
	public List<GoodImgInfoVO> selectGoodsImg(GoodsInfoVO vo) throws Exception;
	
	public int selectCartCount(CartInfoVO vo) throws Exception;
	
	public int insertToCart(CartInfoVO vo) throws Exception;
	
	public List<CartInfoVO> selectCartList(CartInfoVO vo) throws Exception;
	
	public int deleteCartInfo(CartInfoVO vo) throws Exception;
	
	public int updateBuyQty(CartInfoVO vo) throws Exception;
}	
