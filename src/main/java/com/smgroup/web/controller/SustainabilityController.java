package com.smgroup.web.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smgroup.web.common.CommandMap;
import com.smgroup.web.service.BoardService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller
public class SustainabilityController {
	Logger log = LoggerFactory.getLogger(this.getClass());

	@Value("#{sysinfo['sys.domainName']}")
    private String domainName;
	
	@Resource(name="boardService")
	private BoardService boardService;
    
	
	@RequestMapping(value={"/mgmt/sustainability/list.do"})
	public ModelAndView sustainability_list(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/sustainability/list");

	    Map<String,Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
	    mv.addObject("category", resultCategoryMap.get("map"));
	    String MAIN = "";
	    if(resultCategoryMap.get("map")!=null) {
		    @SuppressWarnings("unchecked")
			Map<String, Object> resultCategoryValue = (Map<String, Object>) resultCategoryMap.get("map");
		    commandMap.put("CODE", resultCategoryValue.get("CODE").toString());
		    if(resultCategoryValue.get("IMAGES").toString().indexOf("gallery")>-1) {
		    	commandMap.put("IMAGES", "GALLERY");
		    }else {
		    	commandMap.put("IMAGES", "SLIDE");
		    }
		    MAIN = resultCategoryValue.get("MAIN").toString();
	    }
	    if(MAIN.equals("Y")) {
	    	commandMap.put("LANG", "KO");
		    Map<String,Object> resultMap = boardService.selectBoardRecomList(commandMap.getMap());
		    mv.addObject("list", resultMap.get("result"));
	    	commandMap.put("LANG", "EN");
		    Map<String,Object> resultMapEn = boardService.selectBoardRecomList(commandMap.getMap());
		    mv.addObject("list_en", resultMapEn.get("result"));
	    }else {

		    Map<String,Object> resultMap = boardService.selectBoardList(commandMap.getMap());
		    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
		    mv.addObject("list", resultMap.get("result"));
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
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/sustainability/write.do"})
	public ModelAndView sustainability_write(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/sustainability/write");
	    Map<String,Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
	    mv.addObject("category", resultCategoryMap.get("map"));
	    
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
	    //int main_count=boardService.selectBoardCount(commandMap.getMap());
	    //mv.addObject("MAIN_COUNT",main_count);
		return mv;
	}

	@RequestMapping(value="/mgmt/sustainability/writeProc.do")
	public ModelAndView sustainability_writeProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:list.do");
	    @SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
	    commandMap.put("CREA_ID", mapSession.get("ADMIN_EMAIL"));
	    commandMap.put("CREA_NAME", mapSession.get("ADMIN_NAME"));
	    commandMap.put("SUBCONTENTS", "");
	    if(commandMap.get("SLUG")==null) {
    			commandMap.put("SLUG", "");
	    }
	    if(commandMap.get("GUBUN")==null){
	    		commandMap.put("GUBUN", "");
	    }
	    if(commandMap.get("START_DTM")==null){
	    		commandMap.put("START_DTM", "");
	    }
		if(commandMap.get("END_DTM")==null){
	    		commandMap.put("END_DTM", "");
	    }
		if(commandMap.get("SECTION")==null){
	    		commandMap.put("SECTION", "");
	    }
		if(commandMap.get("RECOM")==null){
	    		commandMap.put("RECOM", "N");
	    }
	    if(commandMap.get("TAGS")==null) {
			commandMap.put("TAGS", "");
	    }
	    if(commandMap.get("STATUS")==null) {
			commandMap.put("STATUS", "Y");
	    }
	    if(commandMap.get("MAINSTATUS")==null) {
			commandMap.put("MAINSTATUS", "N");
	    }
	    if(commandMap.get("VIDEO")==null) {
			commandMap.put("VIDEO", "");
	    }
	    commandMap.put("CATESLUG", boardService.selectBoardCategoryIpSlug(Integer.valueOf(commandMap.get("PID").toString())));
	    boardService.insertBoard(commandMap.getMap(), request);
	    if(commandMap.get("PID")!=null){
	    	mv.addObject("PID", commandMap.get("PID"));
	    }
	    return mv;
	}
	
	@RequestMapping(value={"/mgmt/sustainability/modify.do"})
	public ModelAndView sustainability_modify(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String uri = request.getRequestURI();
	    ModelAndView mv = new ModelAndView("/mgmt/sustainability/modify");
	    Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
	    Map<String,Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
	    mv.addObject("category", resultCategoryMap.get("map"));
	    
	    mv.addObject("map", map.get("map"));
	    if(map.get("files")!=null) {
	    		mv.addObject("files", map.get("files"));
	    }
	    if(map.get("mobfiles")!=null) {
	    		mv.addObject("mobfiles", map.get("mobfiles"));
	    }
	    
	    
	    
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
	    //int main_count=boardService.selectBoardCount(commandMap.getMap());
	    //mv.addObject("MAIN_COUNT",main_count);
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/sustainability/modifyProc.do")
	public ModelAndView sustainability_modifyProc(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:view.do");
	    commandMap.put("SUBCONTENTS", ""); 
	    if(commandMap.get("SLUG")==null) {
			commandMap.put("SLUG", "");
	    }
	    if(commandMap.get("GUBUN")==null){
	    		commandMap.put("GUBUN", "");
	    }
	    if(commandMap.get("START_DTM")==null){
	    		commandMap.put("START_DTM", "");
	    }
		if(commandMap.get("END_DTM")==null){
	    		commandMap.put("END_DTM", "");
	    }
		if(commandMap.get("SECTION")==null){
	    		commandMap.put("SECTION", "");
	    }
		if(commandMap.get("RECOM")==null){
	    		commandMap.put("RECOM", "N");
	    }
		if(commandMap.get("TAGS")==null){
	    		commandMap.put("TAGS", "");
	    }
	    if(commandMap.get("TAGS")==null) {
			commandMap.put("TAGS", "");
	    }
	    if(commandMap.get("STATUS")==null) {
			commandMap.put("STATUS", "Y");
	    }
	    if(commandMap.get("MAINSTATUS")==null) {
			commandMap.put("MAINSTATUS", "N");
	    }
	    if(commandMap.get("VIDEO")==null) {
			commandMap.put("VIDEO", "");
	    }
	    /*
	    String[] tags=request.getParameterValues("TAGS");
	    if(tags!=null) {
		    if(tags.length>0) {

			    log.info("TAGS:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"+tags);
		    }
	    }
	    */
	    commandMap.put("CATESLUG", boardService.selectBoardCategoryIpSlug(Integer.valueOf(commandMap.get("PID").toString())));
	    boardService.updateBoard(commandMap.getMap(), request);

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
	    mv.addObject("IDX", commandMap.get("IDX"));
	    return mv;
	}
	
	@RequestMapping(value="/mgmt/sustainability/deleteProc.do")
	public ModelAndView sustainability_deleteProc(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:list.do");
	     
	    boardService.deleteBoard(commandMap.getMap());

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
	@RequestMapping(value="/mgmt/sustainability/fileDelete.do")
	public ModelAndView sustainability_deletFileProc(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView();
	    boardService.deleteFile(commandMap.getMap());
	    mv.addObject("result","ok");
	    mv.setViewName("jsonView");
	     
	     
	    return mv;
	}
}