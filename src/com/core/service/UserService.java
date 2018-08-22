package com.core.service;


import com.core.po.User;

/**
 * 用户Service层
 * @author 丁俊鑫
 *
 */
public interface UserService {
//通过账户和密码查询用户
	public User findUser(String username,String password);
}
