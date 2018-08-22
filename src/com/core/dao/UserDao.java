package com.core.dao;

import org.apache.ibatis.annotations.Param;

import com.core.po.User;

/**
 * 用户DAO接口层
 * @author 丁俊鑫
 *
 */
public interface UserDao {
/**
 * 通过账号和密码查询账户
 */
	public User findUser(@Param("username") String username,
            @Param("password") String password);}
