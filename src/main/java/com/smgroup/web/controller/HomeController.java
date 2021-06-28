package com.smgroup.web.controller;

import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smgroup.web.common.CommandMap;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import com.smgroup.web.service.BoardService;
import com.smgroup.web.service.CompanyService;


@Controller
public class HomeController {
	Logger log = LoggerFactory.getLogger(this.getClass());
	@Autowired

    public static Map<String, String> sections;
    static {
    	sections = new LinkedHashMap<String, String>();
    	sections.put("manu", "제조");
    	sections.put("const", "건설");
    	sections.put("ship", "해운");
    	sections.put("media", "미디어·서비스");
    	sections.put("leisure", "레저");
    }

	@Resource(name="boardService")
	private BoardService boardService;

	@Resource(name="companyService")
	private CompanyService companyService;
	
	@RequestMapping(value = {
			"/index.do",
			"/mobile/index.do",
			"/eng/index.do",
			"/mobile/eng/index.do"
			})
	public ModelAndView index(CommandMap commandMap, HttpServletRequest request,Device device) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		String lang = "KO";
		boolean mobool = false;
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			lang = "EN";
			mobool = true;
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			lang = "EN";
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			mobool = true;
		}else {
		    
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/index");
	    boolean mobile = false;
	    if(commandMap.get("mobile")!=null){
	    	if(commandMap.get("mobile").equals("true")) {
	    		mobile = true;
	    	}
	    }
		if (device.isMobile()&&uri.indexOf("/mobile")<0&&mobile==false) {
			mv.setViewName("redirect:/mobile/");
            return mv;
        }
	    

	    Map<String, Object> popupMap = new HashMap<String,Object>();
	    popupMap.put("STATUS","Y");
	    popupMap.put("PID",boardService.selectBoardCategorySlug("popup"));
	    popupMap.put("LANG", lang);
	    popupMap.put("PAGE_ROW", 10);
	    popupMap.put("ORDERBY", "UPDA_DTM ASC");
	    popupMap.put("MAINPOPUP", "Y");
	    if(mobool) {
	    	popupMap.put("SECTION", "MOBILE");
	    }else {
	    	popupMap.put("SECTION", "WEB");
	    }
	    
		Map<String,Object> popupList = boardService.selectBoardList(popupMap);
		mv.addObject("main_popup", popupList.get("result"));
	    
	    
		commandMap.put("PID", boardService.selectBoardCategorySlug("news"));
		commandMap.put("FONTCOL", "TITLE,CONTENTS,CONTENTS,SECTION,UPDA_DTM");
		commandMap.put("MAINSTATUS", "Y");
		commandMap.put("LANG", lang);
		commandMap.put("GROUPNAME", "MAINSORT");
		commandMap.put("PAGE_ROW", 3);
		Map<String,Object> newsMap = boardService.selectBoardRecomList(commandMap.getMap());
		mv.addObject("main_news", newsMap.get("result"));
		    
		commandMap.put("PID", boardService.selectBoardCategorySlug("media"));
		commandMap.put("PAGE_ROW", 4);
		Map<String,Object> mediaMap = boardService.selectBoardRecomList(commandMap.getMap());
		mv.addObject("main_media", mediaMap.get("result"));
	    
	    return mv;
	}

	@RequestMapping(value= {"/media/movie/list.do","/mobile/media/movie/list.do"})
	public ModelAndView movie_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/media/movie/list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("media"));
	    commandMap.put("LANG", "KO");
	    commandMap.put("PAGE_ROW", 6);
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");

	    CommandMap commandMapRecom = new CommandMap();
	    commandMapRecom.put("PID",commandMap.get("PID"));
	    commandMapRecom.put("STATUS",commandMap.get("STATUS"));
	    commandMapRecom.put("LANG",commandMap.get("LANG"));
	    commandMapRecom.put("RECOM","Y");
	    commandMapRecom.put("GROUPNAME", "SORT");
	    
	    Map<String,Object> resultMapTop = boardService.selectBoardRecomList(commandMapRecom.getMap());
	    mv.addObject("list_top", resultMapTop.get("result"));
    	
	    //최신 리스트
	    commandMap.put("STATUS", "Y");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    return mv;
	}


	@RequestMapping(value={"/media/news/list.do","/mobile/media/news/list.do"})
	public ModelAndView news_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/media/news/list");
	    
	    commandMap.put("PID", boardService.selectBoardCategorySlug("news"));
	    commandMap.put("LANG", "KO");
	    commandMap.put("PAGE_ROW", 6);
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    
	    CommandMap commandMapRecom = new CommandMap();
	    commandMapRecom.put("PID",commandMap.get("PID"));
	    commandMapRecom.put("STATUS",commandMap.get("STATUS"));
	    commandMapRecom.put("LANG",commandMap.get("LANG"));
	    commandMapRecom.put("RECOM","Y");
	    commandMapRecom.put("GROUPNAME", "SORT");
	    
	    Map<String,Object> resultMapTop = boardService.selectBoardRecomList(commandMapRecom.getMap());
	    mv.addObject("list_top", resultMapTop.get("result"));
    	
	    //최신 리스트
	    commandMap.put("STATUS", "Y");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    log.info("============km"+commandMap.get("currentPageNo"));
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    return mv;
	}
	@RequestMapping(value={"/media/news/view.do","/mobile/media/news/view.do"})
	public ModelAndView news_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/media/news/view");
	    
	    commandMap.put("PID", boardService.selectBoardCategorySlug("news"));
	    commandMap.put("LANG", "KO");
	    
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    //mv.addObject("list", map.get("list"));
	    mv.addObject("fileList", map.get("files"));
	    mv.addObject("fileListMob", map.get("mobfiles"));
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
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	@RequestMapping(value="/viewclick.do")
	public ModelAndView viewClick(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
	    boardService.updateHitCnt(commandMap.getMap());
	    mv.addObject("result","ok");
	    mv.setViewName("jsonView");
	    return mv;
	}
	@RequestMapping(value={"/business.do","/eng/business.do"})
	public ModelAndView business(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		if(uri.indexOf("/eng")>-1){
			commandMap.put("STATUS_EN", "Y");
		}else {
		    commandMap.put("STATUS", "Y");
		}
	    ModelAndView mv = new ModelAndView();
	    commandMap.put("ORDERBY", "SORT ASC,UPDA_DTM DESC");

	    commandMap.put("SUBOOL", true);
	    commandMap.put("FRONTCOL", "A.SECTIONS,A.NAME,A.NAME_EN,A.NAME_SUB,A.NAME_SUB_EN,A.URL,A.URL_EN,A.SORT,A.UPDA_DTM,A.PATH,A.THUMB,A.THUMB_EN,B.STATUS_SUB,B.STATUS_SUB_EN");
	    
	    /* 제조 */
	    commandMap.put("SECTIONS", "manu");
	    Map<String,Object> manu = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("manu", manu.get("result"));
	    /* 건설 */
	    commandMap.put("SECTIONS", "const");
	    commandMap.put("SECTIONS2", "brand");
	    commandMap.put("ORDERBY", "SECTIONS DESC,SORT ASC,UPDA_DTM DESC");
	    Map<String,Object> const2 = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("const2", const2.get("result"));
	    commandMap.remove("SECTIONS2");
	    commandMap.put("ORDERBY", "SORT ASC,UPDA_DTM DESC");
	    /* 해운 */
	    commandMap.put("SECTIONS", "ship");
	    Map<String,Object> ship = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("ship", ship.get("result"));
	    /* 미디어·서비스 */
	    commandMap.put("SECTIONS", "media");
	    Map<String,Object> media = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("media", media.get("result"));
	    /* 레저 */
	    commandMap.put("SECTIONS", "leisure");
	    Map<String,Object> leisure = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("leisure", leisure.get("result"));
	    
	    mv.addObject("result","ok");
	    mv.setViewName("jsonView");
	    return mv;
	}
	@RequestMapping(value={
			"/business/manufacturing.do",
			"/mobile/business/manufacturing.do",
			"/eng/business/manufacturing.do",
			"/mobile/eng/business/manufacturing.do"
			})
	public ModelAndView manufacturing(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("STATUS_COMPANY", "Y");
		}else {
		    commandMap.put("STATUS_COMPANY", "Y");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/manufacturing");
	    commandMap.put("SECTIONS", "manu");
	    commandMap.put("SUBOOL", true);
	    commandMap.put("ORDERBY", "SORT ASC, UPDA_DTM DESC");
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
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
	    
	    
	    return mv;
	}
	@RequestMapping(value={
			"/business/construction.do",
			"/mobile/business/construction.do",
			"/eng/business/construction.do",
			"/mobile/eng/business/construction.do"
			})
	public ModelAndView construction(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("STATUS_COMPANY", "Y");
		}else {
		    commandMap.put("STATUS_COMPANY", "Y");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/construction");
	    commandMap.put("SECTIONS", "const");
	    commandMap.put("SUBOOL", true);
	    commandMap.put("ORDERBY", "SORT ASC, UPDA_DTM DESC");
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
//	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    

	    commandMap.put("SECTIONS", "brand");
	    Map<String,Object> brandMap = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("brand", brandMap.get("result"));
	    
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
	@RequestMapping(value={
			"/business/shipping-industry.do",
			"/mobile/business/shipping-industry.do",
			"/eng/business/shipping-industry.do",
			"/mobile/eng/business/shipping-industry.do"
			})
	public ModelAndView shipping_industry(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("STATUS_COMPANY", "Y");
		}else {
		    commandMap.put("STATUS_COMPANY", "Y");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/shipping-industry");
	    commandMap.put("SECTIONS", "ship");
	    commandMap.put("SUBOOL", true);
	    commandMap.put("ORDERBY", "SORT ASC, UPDA_DTM DESC");
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
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
	    
	    
	    return mv;
	}
	@RequestMapping(value={
			"/business/media-service.do",
			"/mobile/business/media-service.do",
			"/eng/business/media-service.do",
			"/mobile/eng/business/media-service.do"
			})
	public ModelAndView media_service(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("STATUS_COMPANY", "Y");
		}else {
		    commandMap.put("STATUS_COMPANY", "Y");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/media-service");
	    commandMap.put("SECTIONS", "media");
	    commandMap.put("SUBOOL", true);
	    commandMap.put("ORDERBY", "SORT ASC, UPDA_DTM DESC");
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
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
	    
	    
	    return mv;
	}
	@RequestMapping(value={
			"/business/leisure.do",
			"/mobile/business/leisure.do",
			"/eng/business/leisure.do",
			"/mobile/eng/business/leisure.do"
			})
	public ModelAndView leisure(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("STATUS_COMPANY_EN", "Y");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("STATUS_COMPANY", "Y");
		}else {
		    commandMap.put("STATUS_COMPANY", "Y");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/leisure");
	    commandMap.put("SECTIONS", "leisure");
	    commandMap.put("SUBOOL", true);
	    commandMap.put("ORDERBY", "SORT ASC, UPDA_DTM DESC");
	    Map<String,Object> resultMap = companyService.selectCompanyAllList(commandMap.getMap());
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
	    
	    
	    return mv;
	}
	@RequestMapping(value={
			"/business/view.do",
			"/mobile/business/view.do",
			"/eng/business/view.do",
			"/mobile/eng/business/view.do"
			})
	public ModelAndView business_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}else {
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/business/view");

	    commandMap.put("SUBOOL", true);
	    Map<String,Object> map = companyService.selectCompanyDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    commandMap.put("LANG", "kr");
		if(uri.indexOf("/eng")>-1){
			commandMap.put("LANG", "en");
		}
	    Map<String,Object> mapConKr = (Map<String, Object>) companyService.selectCompanyContents(commandMap.getMap());
	    mv.addObject("mapConKr", mapConKr.get("map"));
	    

	    Map<String, Object> listMap = new HashMap<String,Object>();
	    @SuppressWarnings("unchecked")
		Map<String, Object> viewtMap = (Map<String, Object>) map.get("map");
	    if(viewtMap.get("SECTIONS")!=null){
	    listMap.put("SECTIONS", viewtMap.get("SECTIONS"));
	    }
	    listMap.put("STATUS_COMPANY", "Y");
	    listMap.put("ORDERBY", "SORT ASC");
	    listMap.put("NOTIDX", viewtMap.get("IDX"));
	    listMap.put("PAGE_ROW", 100);
	    listMap.put("SUBOOL", true);
	    Map<String,Object> resultMap = companyService.selectCompanyList(listMap);
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
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    mv.addObject("sections_list",sections);
	    
	    return mv;
	}

	@RequestMapping(value={"/media/sns.do","/mobile/media/sns.do"})
	public ModelAndView media_sns(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/media/sns");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("social"));
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    
	    commandMap.put("GUBUN", "유튜브");
	    commandMap.put("PAGE_ROW", 2);
	    Map<String,Object> youtube = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("youtube", youtube.get("result"));

	    commandMap.put("GUBUN", "페이스북");
	    commandMap.put("PAGE_ROW", 3);
	    Map<String,Object> facebook = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("facebook", facebook.get("result"));

	    commandMap.put("GUBUN", "인스타그램");
	    commandMap.put("PAGE_ROW", 3);
	    Map<String,Object> instagram = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("instagram", instagram.get("result"));
	    
	    
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
	@RequestMapping(value={
			"/etc/location.do",
			"/mobile/etc/location.do",
			"/eng/etc/location.do",
			"/mobile/eng/etc/location.do"
			})
	public ModelAndView location(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
		}else {
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/etc/location");
	    commandMap.put("STATUS_ADDR", "Y");
	    //commandMap.put("ORDERBY", "SORT ASC,UPDA_DTM DESC");
	    commandMap.put("ORDERBY", "NAME ASC");
	    Map<String,Object> brandMap = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("list", brandMap.get("result"));

	    /* 제조 */
	    commandMap.put("SECTIONS", "manu");
	    Map<String,Object> manu = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("manu", manu.get("result"));
	    /* 건설 */
	    commandMap.put("SECTIONS", "const");
	    commandMap.put("SECTIONS2", "brand");
	    Map<String,Object> const2 = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("const2", const2.get("result"));
	    commandMap.remove("SECTIONS2");
	    /* 해운 */
	    commandMap.put("SECTIONS", "ship");
	    Map<String,Object> ship = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("ship", ship.get("result"));
	    /* 미디어·서비스 */
	    commandMap.put("SECTIONS", "media");
	    Map<String,Object> media = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("media", media.get("result"));
	    /* 레저 */
	    commandMap.put("SECTIONS", "leisure");
	    Map<String,Object> leisure = companyService.selectCompanyAllList(commandMap.getMap());
	    mv.addObject("leisure", leisure.get("result"));
	    
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

	@RequestMapping(value={
			"/sustainability/ethics/list.do",
			"/mobile/sustainability/ethics/list.do",
			"/eng/sustainability/ethics/list.do",
			"/mobile/eng/sustainability/ethics/list.do"
			})
	public ModelAndView ethics_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
		log.info("rootPath::::::"+rootPath);
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/ethics/list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("sustainability"));
	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW", 6);
	    }
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    commandMap.put("GUBUN", "윤리경영");
	    
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	@RequestMapping(value={
			"/sustainability/ethics/view____.do",
			"/mobile/sustainability/ethics/view____.do",
			"/eng/sustainability/ethics/view____.do",
			"/mobile/eng/sustainability/ethics/view____.do"
			})
	public ModelAndView ethics_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/ethics/view");
	    
	    commandMap.put("PID", boardService.selectBoardCategorySlug("sustainability"));
	    
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    //mv.addObject("list", map.get("list"));
	    mv.addObject("fileList", map.get("files"));
	    mv.addObject("fileListMob", map.get("mobfiles"));
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
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}

	@RequestMapping(value={
			"/sustainability/partnership/list.do",
			"/mobile/sustainability/partnership/list.do",
			"/eng/sustainability/partnership/list.do",
			"/mobile/eng/sustainability/partnership/list.do"
			})
	public ModelAndView partnership_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/partnership/list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("sustainability"));
	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW", 6);
	    }
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    commandMap.put("GUBUN", "상생경영");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	@RequestMapping(value={
			"/sustainability/partnership/view____.do",
			"/mobile/sustainability/partnership/view____.do",
			"/eng/sustainability/partnership/view____.do",
			"/mobile/eng/sustainability/partnership/view____.do"
			})
	public ModelAndView partnership_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/partnership/view");

	    if(commandMap.get("slug")==null){
	    	commandMap.put("slug", "sustainability");
	    }
	    commandMap.put("PID", boardService.selectBoardCategorySlug(commandMap.get("slug").toString()));
	    
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    //mv.addObject("list", map.get("list"));
	    mv.addObject("fileList", map.get("files"));
	    mv.addObject("fileListMob", map.get("mobfiles"));
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
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	@RequestMapping(value={
			"/sustainability/environment/list.do",
			"/mobile/sustainability/environment/list.do",
			"/eng/sustainability/environment/list.do",
			"/mobile/eng/sustainability/environment/list.do"
			})
	public ModelAndView environment_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/environment/list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("sustainability"));
	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW", 6);
	    }
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    commandMap.put("GUBUN", "환경경영");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

    	Map<String, Object> companyContents = new HashMap<String,Object>();
    	companyContents.put("STATUS", "Y");
    	companyContents.put("PID", boardService.selectBoardCategorySlug("environment"));
    	int bottomCount = boardService.selectBoardCount(companyContents);
    	mv.addObject("bottomCount", bottomCount);
    	
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}

	@RequestMapping(value={
			"/sustainability/environment/bottom_list.do",
			"/mobile/sustainability/environment/bottom_list.do",
			"/eng/sustainability/environment/bottom_list.do",
			"/mobile/eng/sustainability/environment/bottom_list.do"
			})
	public ModelAndView environment_bottom(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/environment/bottom_list");

	    if(commandMap.get("slug")==null){
	    	commandMap.put("slug", "environment");
	    }
	    commandMap.put("PID", boardService.selectBoardCategorySlug(commandMap.get("slug").toString()));
	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW", 4);
	    }
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	@RequestMapping(value={
			"/sustainability/environment/view____.do",
			"/mobile/sustainability/environment/view____.do",
			"/eng/sustainability/environment/view____.do",
			"/mobile/eng/sustainability/environment/view____.do"
			})
	public ModelAndView environment_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/environment/view");

	    if(commandMap.get("slug")==null){
	    	commandMap.put("slug", "sustainability");
	    }
	    commandMap.put("PID", boardService.selectBoardCategorySlug(commandMap.get("slug").toString()));
	    
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    //mv.addObject("list", map.get("list"));
	    mv.addObject("fileList", map.get("files"));
	    mv.addObject("fileListMob", map.get("mobfiles"));
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
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}

	@RequestMapping(value={
			"/sustainability/social-contribution/list.do",
			"/mobile/sustainability/social-contribution/list.do",
			"/eng/sustainability/social-contribution/list.do",
			"/mobile/eng/sustainability/social-contribution/list.do"
			})
	public ModelAndView social_contribution_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/social-contribution/list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("sustainability"));

	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW", 6);
	    }
	    
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    commandMap.put("GUBUN", "사회공헌");
	    
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

	    
	    

    	Map<String, Object> companyContents = new HashMap<String,Object>();
    	companyContents.put("STATUS", "Y");
    	companyContents.put("PID", boardService.selectBoardCategorySlug("responsibility"));
    	int bottomCount = boardService.selectBoardCount(companyContents);
    	mv.addObject("bottomCount", bottomCount);
    	
	    if(commandMap.get("target")!=null){
	    	mv.addObject("target", commandMap.get("target"));
	    }
	    if(commandMap.get("keyword")!=null){
	    	mv.addObject("keyword", commandMap.get("keyword"));
	    }
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}

	@RequestMapping(value={
			"/sustainability/social-contribution/bottom_list.do",
			"/mobile/sustainability/social-contribution/bottom_list.do",
			"/eng/sustainability/social-contribution/bottom_list.do",
			"/mobile/eng/sustainability/social-contribution/bottom_list.do"
			})
	public ModelAndView social_contribution_bottom(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/social-contribution/bottom_list");

	    commandMap.put("PID", boardService.selectBoardCategorySlug("responsibility"));
	    if(commandMap.get("PAGE_ROW")==null){
	    	commandMap.put("PAGE_ROW",3);
	    }
	    commandMap.put("ORDERBY", "UPDA_DTM DESC");
	    commandMap.put("STATUS", "Y");
	    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	    mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }

	    return mv;
	}
	@RequestMapping(value={
			"/sustainability/social-contribution/view____.do",
			"/mobile/sustainability/social-contribution/view____.do",
			"/eng/sustainability/social-contribution/view____.do",
			"/mobile/eng/sustainability/social-contribution/view____.do"
			})
	public ModelAndView social_contributiont_view(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		String rootPath = "/web";
		if(uri.indexOf("/mobile/eng")>-1){
			rootPath = "/mobile/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/eng")>-1){
			rootPath = "/web/eng";
			commandMap.put("LANG", "EN");
		}else if(uri.indexOf("/mobile")>-1){
			rootPath = "/mobile";
			commandMap.put("LANG", "KO");
		}else {
			commandMap.put("LANG", "KO");
		}
	    ModelAndView mv = new ModelAndView(rootPath+"/sustainability/social-contribution/view");

	    if(commandMap.get("slug")==null){
	    	commandMap.put("slug", "sustainability");
	    }
	    commandMap.put("PID", boardService.selectBoardCategorySlug(commandMap.get("slug").toString()));
	    
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    //mv.addObject("list", map.get("list"));
	    mv.addObject("fileList", map.get("files"));
	    mv.addObject("fileListMob", map.get("mobfiles"));
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
	    if(commandMap.get("sdate")!=null){
	    	mv.addObject("sdate", commandMap.get("sdate"));
	    }
	    if(commandMap.get("edate")!=null){
	    	mv.addObject("edate", commandMap.get("edate"));
	    }
	    if(commandMap.get("ajaxPageNo")!=null){
	    	mv.addObject("ajaxPageNo", commandMap.get("ajaxPageNo"));
	    }
	    return mv;
	}
	
	
	
	/**
	* 프론트 페이지 전체 맵핑 
	* 
	* @author  김영대
	*/
	@RequestMapping(value = "/{pageName}")
	public String webPage(@PathVariable("pageName") String pageName){
		log.info(pageName);
		return "/web/"+pageName;
	}
	@RequestMapping(value = "/{folderName1}/{pageName}")
	public String webPage2(@PathVariable("folderName1") String folderName1,@PathVariable("pageName") String pageName){
		log.info(folderName1+','+pageName);
		return "/web/"+folderName1+"/"+pageName;
	}
	@RequestMapping(value = "/{folderName1}/{folderName2}/{pageName}")
	public String webPage3(@PathVariable("folderName1") String folderName1,@PathVariable("folderName2") String folderName2,@PathVariable("pageName") String pageName){
		return "/web/"+folderName1+"/"+folderName2+"/"+pageName;
	}
	@RequestMapping(value = "/{folderName1}/{folderName2}/{folderName3}/{pageName}")
	public String webPage4(@PathVariable("folderName1") String folderName1,@PathVariable("folderName2") String folderName2,@PathVariable("folderName3") String folderName3,@PathVariable("pageName") String pageName){
		return "/web/"+folderName1+"/"+folderName2+"/"+folderName3+"/"+pageName;
	}
	@RequestMapping(value = "/mobile/{pageName}")
	public String mobPage(@PathVariable("pageName") String pageName){
		return "/mobile/"+pageName;
	}
	@RequestMapping(value = "/mobile/{folderName1}/{pageName}")
	public String mobPage2(@PathVariable("folderName1") String folderName1,@PathVariable("pageName") String pageName){
		return "/mobile/"+folderName1+"/"+pageName;
	}
	@RequestMapping(value = "/mobile/{folderName1}/{folderName2}/{pageName}")
	public String mobPage3(@PathVariable("folderName1") String folderName1,@PathVariable("folderName2") String folderName2,@PathVariable("pageName") String pageName){
		return "/mobile/"+folderName1+"/"+folderName2+"/"+pageName;
	}
	@RequestMapping(value = "/mobile/{folderName1}/{folderName2}/{folderName3}/{pageName}")
	public String mobPage4(@PathVariable("folderName1") String folderName1,@PathVariable("folderName2") String folderName2,@PathVariable("folderName3") String folderName3,@PathVariable("pageName") String pageName){
		return "/mobile/"+folderName1+"/"+folderName2+"/"+folderName3+"/"+pageName;
	}

	/**
	* 에러 페이지 맵핑 
	* 
	* @author  김영대
	*/
	@RequestMapping(value="/error_403.do", method = RequestMethod.GET)
	public ModelAndView error_403(HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
		String uri = request.getAttribute("javax.servlet.error.request_uri").toString();
		if(uri.indexOf("/mgmt")==0){
		    mv.setViewName("/mgmt/error_403");
		}else if(uri.indexOf("/mobile")==0){
		    mv.setViewName("/mobile/error_403");
		}else if(uri.indexOf("/eng/mobile")==0){
		    mv.setViewName("/mobile/eng/error_403");
		}else if(uri.indexOf("/eng")==0){
		    mv.setViewName("/web/eng/error_403");
		}else{
			mv.setViewName("/web/error_403");
		}
	    return mv;
	}

	@RequestMapping(value="/error_404.do", method = RequestMethod.GET)
	public ModelAndView error_404(HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();
		String uri = request.getAttribute("javax.servlet.error.request_uri").toString();
		if(uri.indexOf("/mgmt")==0){
		    mv.setViewName("/mgmt/error_404");
		}else if(uri.indexOf("/mobile")==0){
		    mv.setViewName("/mobile/error_404");
		}else if(uri.indexOf("/eng/mobile")==0){
		    mv.setViewName("/mobile/eng/error_404");
		}else if(uri.indexOf("/eng")==0){
		    mv.setViewName("/web/eng/error_404");
		}else{
			mv.setViewName("/web/error_404");
		}
	    return mv;
	}

	@RequestMapping(value="/error_500.do", method = RequestMethod.GET)
	public ModelAndView error_500(HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView();

		String uri = request.getAttribute("javax.servlet.error.request_uri").toString();
		if(uri.indexOf("/mgmt")==0){
		    mv.setViewName("/mgmt/error_500");
		}else if(uri.indexOf("/mobile")==0){
		    mv.setViewName("/mobile/error_500");
		}else if(uri.indexOf("/eng/mobile")==0){
		    mv.setViewName("/mobile/eng/error_500");
		}else if(uri.indexOf("/eng")==0){
		    mv.setViewName("/web/eng/error_500");
		}else{
			mv.setViewName("/web/error_500");
		}
	    return mv;
	}
	
	
}