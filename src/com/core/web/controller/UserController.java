package com.core.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.core.po.User;
import com.core.service.UserService;

/**
 * 用戶控制器类
 * 
 * @author 丁俊鑫
 *
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String login(String username,String password,Model model,HttpSession session) {
		//通过账号和密码查询客户
		User user = userService.findUser(username, password);
		if(user!=null) {
			//将用户对象添加到Session
			session.setAttribute("User_Session", user);
			//跳转到主页
			return "customer";
		}
		model.addAttribute("msg", "账号和密码错误，请重新输入");
		return "login";
	}
	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value="/toHome.action")
			public String toHome() {
		return "customer";
	}
	/**
	 * 用户退出
	 */
	@RequestMapping(value="/logout.action")
	public String logout(HttpSession session) {
		//清除session
		session.invalidate();
		//重定向到登录页面的跳转方法
		return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}
}
