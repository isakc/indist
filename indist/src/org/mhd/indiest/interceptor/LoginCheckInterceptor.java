package org.mhd.indiest.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginCheckInterceptor 
 extends HandlerInterceptorAdapter{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = 
				request.getSession();
		
		Object loginUser = 
				session.getAttribute("loginUser");
		
		if(loginUser==null) {
			System.out.println("로그인 안됨");
			
			response.sendRedirect("/index");
			return false;
		}//if end
		
		System.out.println("로그인 되었음");
		return true;
	}
	

	/*
	 * 우리가 인터셉터를 만들기 위해서는
	 * HandlerInterceptor 인터페이스를 구현하거나
	 * 
	 * HandlerInterceptorAdapter 추상클래스를
	 * 상속받거나
	 * 
	 */
}
