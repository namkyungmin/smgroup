package com.smgroup.web.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smgroup.web.common.CommandMap;
import com.smgroup.web.service.CompanyService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller
public class CompanyController {
	Logger log = LoggerFactory.getLogger(this.getClass());

	@Value("#{sysinfo['sys.domainName']}")
    private String domainName;
	
	@Resource(name="companyService")
	private CompanyService companyService;
	
    public static Map<String, String> sections;
    static {
    	sections = new LinkedHashMap<String, String>();
    	sections.put("manu", "제조");
    	sections.put("const", "건설");
    	sections.put("brand", "건설 브랜드");
    	sections.put("ship", "해운");
    	sections.put("media", "미디어·서비스");
    	sections.put("leisure", "레저");
    }

	
	@RequestMapping(value={"/mgmt/company/list.do"})
	public ModelAndView list(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/company/list");

	    Map<String,Object> resultMap = companyService.selectCompanyList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("SECTIONS")!=null){
	    	mv.addObject("SECTIONS", commandMap.get("SECTIONS"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    mv.addObject("sections_list",sections);
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/company/write.do"})
	public ModelAndView write(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/company/write");
		
	    if(commandMap.get("currentPageNo")!=null){
	    	mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    }
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    //int main_count=companyService.selectCompanyCount(commandMap.getMap());
	    mv.addObject("sections_list",sections);
		return mv;
	}

	@RequestMapping(value="/mgmt/company/writeProc.do")
	public ModelAndView writeProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:list.do");
	    @SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
	    commandMap.put("CREA_ID", mapSession.get("ADMIN_EMAIL"));
	    commandMap.put("CREA_NAME", mapSession.get("ADMIN_NAME"));
	    
	    companyService.insertCompany(commandMap.getMap(), request);
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/company/modify.do"})
	public ModelAndView modify(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/company/modify");
	    Map<String,Object> map = companyService.selectCompanyDetail(commandMap.getMap());
	    
	    
	    mv.addObject("map", map.get("map"));
	    
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    mv.addObject("sections_list",sections);
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/company/modifyProc.do")
	public ModelAndView modifyProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:list.do");
	    
	    companyService.updateCompany(commandMap.getMap(), request);
	    if(commandMap.get("retUrl").toString().isEmpty()) {

		    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		    if(commandMap.get("target")!=null){
		    	mv.addObject("target", commandMap.get("target"));
		    }
		    if(commandMap.get("keyword")!=null){
		    	mv.addObject("keyword", commandMap.get("keyword"));
		    }
		    if(commandMap.get("PID")!=null){
		    	mv.addObject("PID", commandMap.get("PID"));
		    }
		    if(commandMap.get("TYPES")!=null){
		    	mv.addObject("TYPES", commandMap.get("TYPES"));
		    }
		    //mv.addObject("IDX", commandMap.get("IDX"));
	    }else {
	    	mv.setViewName("redirect:"+commandMap.get("retUrl"));
	    }
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/company/deleteProc.do")
	public ModelAndView deleteProc(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:list.do");
	     
	    companyService.deleteCompany(commandMap.getMap());

	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    return mv;
	}
	
	

	
	@RequestMapping(value={"/mgmt/company/sub_list.do"})
	public ModelAndView sub_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/company/sub_list");
	    commandMap.put("SUBOOL",true);
	    Map<String,Object> resultMap = companyService.selectCompanyList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    mv.addObject("sections_list",sections);
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/company/sub_modify.do"})
	public ModelAndView sub_modify(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/company/sub_modify");
	    commandMap.put("SUBOOL", true);
	    Map<String,Object> map = companyService.selectCompanyDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    commandMap.put("LANG", "kr");
	    Map<String,Object> mapConKr = (Map<String, Object>) companyService.selectCompanyContents(commandMap.getMap());
	    mv.addObject("mapConKr", mapConKr.get("map"));
	    
	    commandMap.put("LANG", "en");
	    Map<String,Object> mapConEn = (Map<String, Object>) companyService.selectCompanyContents(commandMap.getMap());
	    mv.addObject("mapConEn", mapConEn.get("map"));
	    
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    mv.addObject("sections_list",sections);
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/company/sub_modify_contents.do"})
	public ModelAndView sub_modify_contents(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("/mgmt/company/sub_modify_contents");
	    
	    mv.addObject("IDX",commandMap.get("IDX"));
	    mv.addObject("NUM",commandMap.get("NUM"));
	    mv.addObject("CON_TITLE",commandMap.get("CON_TITLE"));
	    mv.addObject("CON_IMAGE",commandMap.get("CON_IMAGE"));
	    mv.addObject("CON_IMAGE_MO",commandMap.get("CON_IMAGE_MO"));
	    mv.addObject("CON_BODY",commandMap.get("CON_BODY"));
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/company/sub_modifyProc.do")
	public ModelAndView sub_modifyProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:sub_list.do");
	    
	    companyService.updateCompanySub(commandMap.getMap(), request);

	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/company/sub_deleteProc.do")
	public ModelAndView sub_deleteProc(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:sub_list.do");
	     
	    companyService.deleteCompanySub(commandMap.getMap());

	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    if(commandMap.get("TYPES")!=null){
	    	mv.addObject("TYPES", commandMap.get("TYPES"));
	    }
	    return mv;
	}

	@RequestMapping(value={"/mgmt/company/sort.do"})
	public ModelAndView company_sort(CommandMap commandMap, HttpServletRequest request) throws Exception{
//		String uri = request.getRequestURI();
	    if(commandMap.get("SECTIONS")==null){
	    	commandMap.put("SECTIONS","manu");
	    }
    	commandMap.put("ORDERBY","SORT ASC, UPDA_DTM DESC");
	    ModelAndView mv = new ModelAndView("/mgmt/company/sort");
	    
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("sections_list",sections);
	    mv.addObject("SECTIONS",commandMap.get("SECTIONS"));
	    return mv;
	}
	@RequestMapping(value="/mgmt/company/sortProc.do")
	public ModelAndView company_sortProc(CommandMap commandMap,@RequestParam(value="ids",required=true) List<String> idx) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:sort.do");

	    int i = 1;
	    for( String value : idx ){
	    	commandMap.put("IDX", value);
	    	commandMap.put("SORT", i);
	    	companyService.updateSort(commandMap.getMap());
	    	i++;
	    }

	    if(commandMap.get("SECTIONS")!=null){
	    	mv.addObject("SECTIONS", commandMap.get("SECTIONS"));
	    }
	    return mv;
	}

	
}