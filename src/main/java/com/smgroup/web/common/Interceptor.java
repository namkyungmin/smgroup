package com.smgroup.web.common;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
public class Interceptor extends HandlerInterceptorAdapter{
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        try {
    		String uri = request.getRequestURI();
    		String uriPath = "";
    		if(uri.indexOf("/mobile")>-1){
    			uriPath = "/mobile";
    		}
            if(request.getSession().getAttribute("member") == null ){
            		
                String path = request.getServletPath();	
                String query = request.getQueryString(); //파라미터가 있는지 없는지
                if(query != null){
                    path = path+"?"+query;
                }
                path = URLEncoder.encode(path,"UTF-8");
                response.sendRedirect(uriPath+"/member/login.do?redirect="+path);
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //admin 세션key 존재시 main 페이지 이동
        return true;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
 
    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
}