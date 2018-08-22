package com.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.core.dao.UserDao;
import com.core.po.User;
import com.core.service.UserService;

/**
 * 用户Service接口实现类
 * @author 丁俊鑫
 *
 */
@Service("userService")
@Transactional
public class UserSecviceimpl implements UserService{
	//注入UserDao
	@Autowired
	private UserDao userDao;
	//通过账户和密码查询用户
	@Override
	public User findUser(String username, String password) {
		User user = this.userDao.findUser(username, password);
		return user;
	}
}
