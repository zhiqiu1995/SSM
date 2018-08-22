package com.core.service;
import com.common.utils.Page;
import com.core.po.Customer;
public interface CustomerService {
	// 查询客户列表
	public Page<Customer> findCustomerList(Integer page, Integer rows, 
                                        String custName,String custSource,
                                        String custIndustry,String custLevel);
	public int createCustomer(Customer customer);
	//根据id查询用户信息
	public Customer getCustomerById(Integer id);
	//根据id更新客户
	public int updateCustomer(Customer customer);
	//根据id删除客户
	public int deleteCustomer(Integer id);

}
