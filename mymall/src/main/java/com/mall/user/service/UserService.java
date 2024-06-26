package com.mall.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.table.vo.UserInfoVO;
import com.mall.user.dao.UserDao;

@Service
public class UserService {

	@Autowired
	UserDao dao;
	
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception{
		return dao.selectUserInfo(vo);
	}
	
	
	
	
	
	
}
