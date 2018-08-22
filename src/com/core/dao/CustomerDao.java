package com.core.dao;

import java.util.List;

import com.core.po.Customer;

//Customer接口
public interface CustomerDao {
	//查询客户列表
public List<Customer> selectCustomerList(Customer customer);
	//查询客户数量
public Integer selectCustomerListCount(Customer customer);
	//创建客户
public int createCustomer(Customer customer);
	//通过id查询客户
public Customer getCustomerById(Integer id);
	//通过id更新客户
public int updateCustomer(Customer customer);
	//通过id删除客户
public int deleteCustomer(Integer id);
}
