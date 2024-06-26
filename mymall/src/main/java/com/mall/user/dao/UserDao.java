package com.mall.user.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.UserInfoVO;

@MapperScan(basePackages="com.mall.user.dao")
public interface UserDao {

	
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception;
	
	
}

