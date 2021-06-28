package com.smgroup.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import com.smgroup.web.common.CommandMap;
import com.smgroup.web.service.AdminMemberService;


import com.smgroup.web.common.CommonTld;
import com.smgroup.web.common.util.CommonUtils;

@Controller
public class AdminMemberController {
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;

	@RequestMapping(value="/401.do", method = RequestMethod.GET)
	public ModelAndView error_401(HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("/mgmt/error_403");
	    return mv;
	}
	
	@RequestMapping(value = "/mgmt/login.do")
	public ModelAndView adminLogin(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mgmt/login");

	    String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null)
            ip = request.getRemoteAddr();
         
		Map<String, Object> commandMap = new HashMap<String,Object>();
		commandMap.put("IP",ip );
	    List<Map<String, Object>> resultMap = adminMemberService.selectIP(commandMap);
        boolean ipbool = false;
        if(resultMap.size()>0) {
        	for (Map<String, Object> entry : resultMap) {
        	    if(entry.get("IP").toString().equals("0.0.0.0")) {
        	    	ipbool = true;
        	    	break;
        	    }else if(entry.get("IP").toString().equals(ip)) {
        	    	ipbool = true;
        	    	break;
        	    }
        	}
        }else {
        	ipbool = true;
        }
		if(ipbool == true) {

			if(request.getSession().getAttribute("admin")!=null){
				mv.setViewName("redirect:/mgmt/logout.do");
			}else{
				if(request.getParameter("redirect")==null) {
					mv.addObject("redirectUrl","/mgmt/admin/index.do");
				}else {
					mv.addObject("redirectUrl",request.getParameter("redirect"));
				}
				mv.setViewName("/mgmt/auth/login");
			}
		}else {
			mv.setViewName("/mgmt/error_403");
		}
	    return mv;
	}
	@RequestMapping(value = "/mgmt/admin/index.do")
	public ModelAndView index(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if(request.getSession().getAttribute("admin")==null){
			mv.setViewName("redirect:/mgmt/login.do");
		}else{
			if(request.getParameter("redirect")==null) {
				@SuppressWarnings("unchecked")
				Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
				mv.setViewName("redirect:"+CommonUtils.redirectAdmin(mapSession));
				
			}else {
				mv.setViewName("redirect:"+request.getParameter("redirect"));
			}
		}
	    return mv;
	}
	
	@RequestMapping(value = "/mgmt/admin/emailSearch.do", method = RequestMethod.POST)
	public ModelAndView emailSearch(CommandMap commandMap) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    Map<String, Object> resultMap = adminMemberService.emailSearch(commandMap.getMap());
	    mv.addObject("result", resultMap.get("map"));
	    mv.setViewName("jsonView");
	    return mv;
	}
	
	@RequestMapping(value = "/mgmt/loginProc.do", method = RequestMethod.POST)
	public ModelAndView loginProc(CommandMap commandMap, HttpServletRequest request) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    
	    Map<String, Object> resultMap = adminMemberService.login(commandMap.getMap());
	    if(resultMap.get("map")!=null){
		    @SuppressWarnings("unchecked")
			Map<String, Object> resultValue = (Map<String, Object>) resultMap.get("map");

		    if(!resultValue.get("STATUS").toString().equals("Y")) {
		    	mv.addObject("result", "statuserror");
		    }else if(passwordEncoder.matches(commandMap.get("PASSWD").toString(),resultValue.get("PASSWD").toString())){
		    	Map<String, Object> map = new HashMap<String,Object>();
		        map.put("ADMIN_ID", resultValue.get("IDX").toString());
		        map.put("ADMIN_EMAIL", resultValue.get("EMAIL").toString());
		        map.put("ADMIN_NAME", resultValue.get("NAME").toString());
		        
		        //ETC SESSIONS
		        if(resultValue.get("DEPARTMENT")!=null) {
		        	map.put("DEPARTMENT", resultValue.get("DEPARTMENT").toString());
		        }else {
		        	map.put("DEPARTMENT", "");
		        }

		        if(resultValue.get("GRANTS")!=null) {
		        	map.put("GRANTS", resultValue.get("GRANTS").toString());
		        }else {
		        	map.put("GRANTS", "N");
		        }

		        if(resultValue.get("MENUS")!=null) {
		        	map.put("MENUS", resultValue.get("MENUS").toString());
		        }else {
		        	map.put("MENUS", "");
		        }
	        
	    		request.getSession().setAttribute("admin", map);
	    	
	    		mv.addObject("result", "loginok");
		    }else{
	    		mv.addObject("result", "pwerror");
		    }
	    }else{
	    	mv.addObject("result", "iderror");
	    }
	    mv.setViewName("jsonView");
	    return mv;
	}
	
	@RequestMapping(value = "/mgmt/logout.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/mgmt/login.do");
	    request.getSession().removeAttribute("admin");
	    return mv;
	}

	@RequestMapping(value="/mgmt/admin/update_member.do")
	public ModelAndView update_member(HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		
    	Map<String, Object> memberHash = new HashMap<String,Object>();
    	memberHash.put("EMAIL", mapSession.get("ADMIN_EMAIL"));
	    Map<String, Object> resultMap = adminMemberService.login(memberHash);
	    if(resultMap.get("map")!=null){
		    @SuppressWarnings("unchecked")
			Map<String, Object> resultValue = (Map<String, Object>) resultMap.get("map");
		    if(resultValue.get("EMAIL")!=null) {
		    	Map<String, Object> map = new HashMap<String,Object>();
		        map.put("ADMIN_ID", resultValue.get("IDX").toString());
		        map.put("ADMIN_EMAIL", resultValue.get("EMAIL").toString());
		        map.put("ADMIN_NAME", resultValue.get("NAME").toString());
		        
		        //ETC SESSIONS
		        if(resultValue.get("DEPARTMENT")!=null) {
		        	map.put("DEPARTMENT", resultValue.get("DEPARTMENT").toString());
		        }else {
		        	map.put("DEPARTMENT", "");
		        }
	
		        if(resultValue.get("GRANTS")!=null) {
		        	map.put("GRANTS", resultValue.get("GRANTS").toString());
		        }else {
		        	map.put("GRANTS", "N");
		        }
	
		        if(resultValue.get("MENUS")!=null) {
		        	map.put("MENUS", resultValue.get("MENUS").toString());
		        }else {
		        	map.put("MENUS", "");
		        }
		    
				request.getSession().setAttribute("admin", map);
		    }
	    }
		mv.setViewName("redirect:"+CommonUtils.redirectAdmin(mapSession));
	    
	    return mv;
	}

	@RequestMapping(value="/mgmt/admin/list.do")
	public ModelAndView openBoardList(CommandMap commandMap,HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("/mgmt/auth/list");

		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		if(CommonUtils.checkAdmin(mapSession, "1")==false) {
			mv.setViewName("redirect:"+CommonUtils.redirectAdmin(mapSession));
		}
		
	    Map<String,Object> resultMap = adminMemberService.selectMemberList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    
	    
	    return mv;
	}
	@RequestMapping(value="/mgmt/admin/view.do")
	public ModelAndView openBoardDetail(CommandMap commandMap,HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("/mgmt/auth/profile");
	     
	    Map<String,Object> map = adminMemberService.selectMemberDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    return mv;
	}

	@RequestMapping(value = "/mgmt/admin/write.do")
	public ModelAndView adminWrite(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mgmt/auth/register");
		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		if(CommonUtils.checkAdmin(mapSession, "1")==false) {
			mv.setViewName("redirect:"+CommonUtils.redirectAdmin(mapSession));
		}
		
	    if(commandMap.get("currentPageNo")!=null){
	    	mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    }

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    return mv;
	}
	@RequestMapping(value="/mgmt/admin/writeProc.do")
	public ModelAndView insertAdmin(CommandMap commandMap, HttpServletRequest request, @RequestParam(value = "MENUS", defaultValue = "0") List<String> vals) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/mgmt/admin/list.do");
	    
	    commandMap.put("PASSWD",passwordEncoder.encode(commandMap.get("PASSWD").toString()));
	    if(commandMap.get("MENUS")!=null) {
		    String menus = "";
		    for(int i=0; i<vals.size() ;i++){
		        if(i>0) {
		        	menus += ","+vals.get(i);
		        }else {
		        	menus += vals.get(i);
		        }
		    }
		    commandMap.put("MENUS", menus);
	    }
	    adminMemberService.insertMember(commandMap.getMap(), request);
	    return mv;
	}

	@RequestMapping(value="/mgmt/admin/modify.do")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/mgmt/auth/modify");
	     
	    Map<String,Object> map = adminMemberService.selectMemberDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    return mv;
	}
	 
	@RequestMapping(value="/mgmt/admin/modifyProc.do")
	public ModelAndView updateBoard(CommandMap commandMap, HttpServletRequest request, @RequestParam(value = "MENUS", defaultValue = "0") List<String> vals) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/mgmt/admin/list.do");
	    
        if(commandMap.get("PASSWD")!=null) {
		    if(commandMap.get("PASSWD").toString().isEmpty()) {
		    	commandMap.remove("PASSWD");
	        }else {
	        	commandMap.put("PASSWD",passwordEncoder.encode(commandMap.get("PASSWD").toString()));
	        }
        }
        if(commandMap.get("MENUS")!=null) {
		    String menus = "";
		    for(int i=0; i<vals.size() ;i++){
		        if(i>0) {
		        	menus += ","+vals.get(i);
		        }else {
		        	menus += vals.get(i);
		        }
		    }
		    commandMap.put("MENUS", menus);
        }
	    adminMemberService.updateMember(commandMap.getMap(), request);
	    //mv.addObject("IDX", commandMap.get("IDX"));
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/admin/deleteProc.do")
	public ModelAndView deleteMember(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/mgmt/admin/list.do");
	     
	    adminMemberService.deleteMember(commandMap.getMap());
	     
	    return mv;
	}

	@RequestMapping(value={"/mgmt/admin/ip.do"})
	public ModelAndView memberip(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/auth/ip");
		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		if(CommonUtils.checkAdmin(mapSession, "1")==false) {
			mv.setViewName("redirect:"+CommonUtils.redirectAdmin(mapSession));
		}
		
	    commandMap.put("PAGE", "json");
	    List<Map<String, Object>> resultMap = adminMemberService.selectIP(commandMap.getMap());
	   String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null)
            ip = request.getRemoteAddr();
         
        mv.addObject("clientIP", ip);
	    mv.addObject("list", resultMap);
	    return mv;
	}

	@RequestMapping(value={"/mgmt/admin/ip_list.do"})
	public ModelAndView memberip_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView();
	    commandMap.put("PAGE", "json");
	    List<Map<String, Object>> resultMap = adminMemberService.selectIP(commandMap.getMap());
	    mv.addObject("list", resultMap);
	    mv.addObject("result","ok");
	    mv.setViewName("jsonView");
	    return mv;
	}
	@RequestMapping(value = "/mgmt/admin/ipDuplicate.do", method = RequestMethod.POST)
	public ModelAndView memberipSearch(CommandMap commandMap) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    int main_count=adminMemberService.selectIPSearch(commandMap.getMap());
	    mv.addObject("COUNT",main_count);
	    mv.setViewName("jsonView");
	    return mv;
	}
	@RequestMapping(value="/mgmt/admin/ipProc.do")
	public ModelAndView memberipProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
	    @SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
	    commandMap.put("CREA_ID", mapSession.get("ADMIN_EMAIL"));
	    commandMap.put("CREA_NAME", mapSession.get("ADMIN_NAME"));
	    if(commandMap.get("PAGE").equals("json")) {
		    	if(commandMap.get("retype").equals("insert")) {
		    	    int slug_count=adminMemberService.selectIPSearch(commandMap.getMap());
		    	    if(slug_count>0) {
		    	    		mv.addObject("result","dup");
		    	    }else {
	    	    			adminMemberService.insertIP(commandMap.getMap(), request);		   
	    	    			mv.addObject("result","ok");
		    	    }
		    		
		    	}else if(commandMap.get("retype").equals("update")) {
		    		adminMemberService.updateIP(commandMap.getMap(), request);
		    		mv.addObject("result","ok");
		    	}else if(commandMap.get("retype").equals("delete")) {
		    		adminMemberService.deleteIP(commandMap.getMap());
		    		mv.addObject("result","ok");
		    	}else {
		    		mv.addObject("result","err-type");
		    	}
	    }else {
	    		mv.addObject("result","err-page");
	    }
	    mv.setViewName("jsonView");
	    return mv;
	}
	
}