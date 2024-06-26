package com.mall.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.login.dao.LoginDao;
import com.mall.table.vo.UserInfoVO;

@Service
public class LoginService {

	@Autowired
	LoginDao dao;
	
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception{
		return dao.selectUserInfo(vo);
	}
	
	public int insertUserInfo(UserInfoVO vo) throws Exception{
		return dao.insertUserInfo(vo);
	}
	
	public int selectIdCount(UserInfoVO vo) throws Exception{
		return dao.selectIdCount(vo);
	}
}
