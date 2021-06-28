package com.smgroup.web.common;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.smgroup.web.service.AdminMemberService;
public class AdminIpInterceptor extends HandlerInterceptorAdapter{

	Logger log = LoggerFactory.getLogger(this.getClass());
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        try {

        	 	String ip = request.getHeader("X-FORWARDED-FOR");

			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
				ip = request.getHeader("Proxy-Client-IP"); 
			} 
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
				ip = request.getHeader("WL-Proxy-Client-IP"); 
			} 
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
				ip = request.getHeader("HTTP_CLIENT_IP"); 
			} 
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
				ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
			} 
			if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
				ip = request.getRemoteAddr(); 
			}
            Map<String, Object> commendMap = new HashMap<String,Object>();
            List<Map<String, Object>> resultMap = adminMemberService.selectIP(commendMap);
     		String ipStatus = "Non";
     		for (Map<String, Object> node : resultMap) {
     		    for (Map.Entry<String, Object> entry : node.entrySet()) {
	           		if(node.get("IP").equals("0.0.0.0")) {
	           			ipStatus = "All";
	           			break;
	           		}else if(node.get("IP").equals(ip)) {
	           			ipStatus = "Tru";
	           			break;
	           		}
     		    }
     		}
            if(!ipStatus.equals("All") && !ipStatus.equals("Tru")) {
            		response.sendRedirect("/401.do");
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