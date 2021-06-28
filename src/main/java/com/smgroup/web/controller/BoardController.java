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
public class BoardController {
	Logger log = LoggerFactory.getLogger(this.getClass());

	@Value("#{sysinfo['sys.domainName']}")
	private String domainName;

	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = { "/mgmt/board/category.do" })
	public ModelAndView category(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/category");
		commandMap.put("PAGE", "json");
		Map<String, Object> resultMap = boardService.selectBoardCategory(commandMap.getMap());
		mv.addObject("list", resultMap.get("result"));
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/category_list.do" })
	public ModelAndView category_list(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView();
		commandMap.put("PAGE", "json");
		Map<String, Object> resultMap = boardService.selectBoardShortCategory(commandMap.getMap());
		mv.addObject("list", resultMap.get("result"));
		mv.addObject("result", "ok");
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/slugDuplicate.do", method = RequestMethod.POST)
	public ModelAndView emailSearch(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		if (commandMap.get("retype").equals("category")) {
			int main_count = boardService.selectBoardCateCntSlug(commandMap.getMap());
			mv.addObject("COUNT", main_count);
		} else {
			int main_count = boardService.selectBoardSlug(commandMap.getMap());
			mv.addObject("COUNT", main_count);
		}
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/categoryProc.do")
	public ModelAndView categoryProc(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		commandMap.put("CREA_ID", mapSession.get("ADMIN_EMAIL"));
		commandMap.put("CREA_NAME", mapSession.get("ADMIN_NAME"));
		if (commandMap.get("PAGE").equals("json")) {
			if (commandMap.get("retype").equals("insert")) {
				int slug_count = boardService.selectBoardCateCntSlug(commandMap.getMap());
				if (slug_count > 0) {
					mv.addObject("result", "dup");
				} else {
					boardService.insertCategory(commandMap.getMap(), request);
					mv.addObject("result", "ok");
				}

			} else if (commandMap.get("retype").equals("update")) {
				boardService.updateCategory(commandMap.getMap(), request);
				mv.addObject("result", "ok");
			} else if (commandMap.get("retype").equals("delete")) {
				boardService.deleteCategory(commandMap.getMap());
				mv.addObject("result", "ok");
			} else {
				mv.addObject("result", "err-type");
			}
		} else {
			mv.addObject("result", "err-page");
		}
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/list.do" })
	public ModelAndView list(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/list");

		Map<String, Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
		mv.addObject("category", resultCategoryMap.get("map"));
		String MAIN = "";
		if (resultCategoryMap.get("map") != null) {
			@SuppressWarnings("unchecked")
			Map<String, Object> resultCategoryValue = (Map<String, Object>) resultCategoryMap.get("map");
			commandMap.put("CODE", resultCategoryValue.get("CODE").toString());
			if (resultCategoryValue.get("IMAGES").toString().indexOf("gallery") > -1) {
				commandMap.put("IMAGES", "GALLERY");
			} else {
				commandMap.put("IMAGES", "SLIDE");
			}
			if (resultCategoryValue.get("MAIN") != null) {
				MAIN = resultCategoryValue.get("MAIN").toString();
			}

		}
		if (MAIN.equals("Y")) {
			commandMap.put("LANG", "KO");
			Map<String, Object> resultMap = boardService.selectBoardRecomList(commandMap.getMap());
			mv.addObject("list", resultMap.get("result"));
			commandMap.put("LANG", "EN");
			Map<String, Object> resultMapEn = boardService.selectBoardRecomList(commandMap.getMap());
			mv.addObject("list_en", resultMapEn.get("result"));
		} else {

			Map<String, Object> resultMap = boardService.selectBoardList(commandMap.getMap());
			mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
			mv.addObject("list", resultMap.get("result"));
			mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		}
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/write.do" })
	public ModelAndView write(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/write");
		Map<String, Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
		mv.addObject("category", resultCategoryMap.get("map"));

		if (commandMap.get("currentPageNo") != null) {
			mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		}
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		// int main_count=boardService.selectBoardCount(commandMap.getMap());
		// mv.addObject("MAIN_COUNT",main_count);
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/writeProc.do")
	public ModelAndView writeProc(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list.do");
		@SuppressWarnings("unchecked")
		Map<String, Object> mapSession = (Map<String, Object>) request.getSession().getAttribute("admin");
		commandMap.put("CREA_ID", mapSession.get("ADMIN_EMAIL"));
		commandMap.put("CREA_NAME", mapSession.get("ADMIN_NAME"));
		commandMap.put("SUBCONTENTS", "");
		if (commandMap.get("SLUG") == null) {
			commandMap.put("SLUG", "");
		}
		if (commandMap.get("GUBUN") == null) {
			commandMap.put("GUBUN", "");
		}
		if (commandMap.get("START_DTM") == null) {
			commandMap.put("START_DTM", "");
		}
		if (commandMap.get("END_DTM") == null) {
			commandMap.put("END_DTM", "");
		}
		if (commandMap.get("SECTION") == null) {
			commandMap.put("SECTION", "");
		}
		if (commandMap.get("RECOM") == null) {
			commandMap.put("RECOM", "N");
		}
		if (commandMap.get("TAGS") == null) {
			commandMap.put("TAGS", "");
		}
		if (commandMap.get("STATUS") == null) {
			commandMap.put("STATUS", "Y");
		}
		if (commandMap.get("MAINSTATUS") == null) {
			commandMap.put("MAINSTATUS", "N");
		}
		if (commandMap.get("VIDEO") == null) {
			commandMap.put("VIDEO", "");
		}
		commandMap.put("CATESLUG",
				boardService.selectBoardCategoryIpSlug(Integer.valueOf(commandMap.get("PID").toString())));
		boardService.insertBoard(commandMap.getMap(), request);
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/view.do" })
	public ModelAndView view(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/view");
		commandMap.put("PAGETYPE", "ADMIN");
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		Map<String, Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
		mv.addObject("category", resultCategoryMap.get("map"));

		mv.addObject("map", map.get("map"));
		if (map.get("files") != null) {
			mv.addObject("files", map.get("files"));
		}
		if (map.get("mobfiles") != null) {
			mv.addObject("mobfiles", map.get("mobfiles"));
		}

		mv.addObject("currentPageNo", commandMap.get("currentPageNo"));

		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/modify.do" })
	public ModelAndView modify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/modify");
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		Map<String, Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
		mv.addObject("category", resultCategoryMap.get("map"));

		mv.addObject("map", map.get("map"));
		if (map.get("files") != null) {
			mv.addObject("files", map.get("files"));
		}
		if (map.get("mobfiles") != null) {
			mv.addObject("mobfiles", map.get("mobfiles"));
		}

		mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		// int main_count=boardService.selectBoardCount(commandMap.getMap());
		// mv.addObject("MAIN_COUNT",main_count);
		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/modify_slug.do" })
	public ModelAndView modify_slug(CommandMap commandMap, HttpServletRequest request) throws Exception {
		String uri = request.getRequestURI();
		ModelAndView mv = new ModelAndView("/mgmt/board/modify");

		int IDX = boardService.selectBoardSlugIDX(commandMap.getMap());
		commandMap.put("IDX", IDX);
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		@SuppressWarnings("unchecked")
		Map<String, Object> mapResult = (Map<String, Object>) map.get("map");
		commandMap.put("PID", mapResult.get("PARENT_IDX"));
		Map<String, Object> resultCategoryMap = boardService.selectBoardCategoryDetail(commandMap.getMap());
		mv.addObject("category", resultCategoryMap.get("map"));

		mv.addObject("map", map.get("map"));
		if (map.get("files") != null) {
			mv.addObject("files", map.get("files"));
		}
		if (map.get("mobfiles") != null) {
			mv.addObject("mobfiles", map.get("mobfiles"));
		}

		mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		mv.addObject("returnUrl", "/mgmt/board/modify_slug.do?SLUG="+commandMap.get("SLUG"));
		// int main_count=boardService.selectBoardCount(commandMap.getMap());
		// mv.addObject("MAIN_COUNT",main_count);
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/modifyProc.do")
	public ModelAndView modifyProc(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:view.do");
		commandMap.put("SUBCONTENTS", "");
		if (commandMap.get("SLUG") == null) {
			commandMap.put("SLUG", "");
		}
		if (commandMap.get("GUBUN") == null) {
			commandMap.put("GUBUN", "");
		}
		if (commandMap.get("START_DTM") == null) {
			commandMap.put("START_DTM", "");
		}
		if (commandMap.get("END_DTM") == null) {
			commandMap.put("END_DTM", "");
		}
		if (commandMap.get("SECTION") == null) {
			commandMap.put("SECTION", "");
		}
		if (commandMap.get("RECOM") == null) {
			commandMap.put("RECOM", "N");
		}
		if (commandMap.get("TAGS") == null) {
			commandMap.put("TAGS", "");
		}
		if (commandMap.get("TAGS") == null) {
			commandMap.put("TAGS", "");
		}
		if (commandMap.get("STATUS") == null) {
			commandMap.put("STATUS", "Y");
		}
		if (commandMap.get("MAINSTATUS") == null) {
			commandMap.put("MAINSTATUS", "N");
		}
		if (commandMap.get("VIDEO") == null) {
			commandMap.put("VIDEO", "");
		}
		/*
		 * String[] tags=request.getParameterValues("TAGS"); if(tags!=null) {
		 * if(tags.length>0) {
		 * 
		 * log.info(
		 * "TAGS:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
		 * +tags); } }
		 */
		commandMap.put("CATESLUG",
				boardService.selectBoardCategoryIpSlug(Integer.valueOf(commandMap.get("PID").toString())));
		boardService.updateBoard(commandMap.getMap(), request);

		mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		mv.addObject("IDX", commandMap.get("IDX"));
		if (commandMap.get("returnUrl") != null) {
			mv.addObject("ALERT", "수정이 완료 되었습니다.");
			mv.setViewName("redirect:"+commandMap.get("returnUrl"));
		}
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/deleteProc.do")
	public ModelAndView deleteProc(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list.do");

		boardService.deleteBoard(commandMap.getMap());

		mv.addObject("currentPageNo", commandMap.get("currentPageNo"));
		if (commandMap.get("target") != null) {
			mv.addObject("target", commandMap.get("target"));
		}
		if (commandMap.get("keyword") != null) {
			mv.addObject("keyword", commandMap.get("keyword"));
		}
		if (commandMap.get("PID") != null) {
			mv.addObject("PID", commandMap.get("PID"));
		}
		if (commandMap.get("TYPES") != null) {
			mv.addObject("TYPES", commandMap.get("TYPES"));
		}
		return mv;
	}

	@RequestMapping(value = "/mgmt/board/fileDelete.do")
	public ModelAndView deletFileProc(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		boardService.deleteFile(commandMap.getMap());
		mv.addObject("result", "ok");
		mv.setViewName("jsonView");

		return mv;
	}

	@RequestMapping(value = { "/mgmt/board/fileDetail.do" })
	public ModelAndView fileDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		int IDX = boardService.selectBoardSlugIDX(commandMap.getMap());
		commandMap.put("IDX", IDX);
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));

	    
		if (map.get("files") != null) {
		    @SuppressWarnings("unchecked")
			Map<String,Object> mapResult = (Map<String, Object>) map.get("files");
		    @SuppressWarnings("unchecked")
			List<Map<String,Object>> fileList = (List<Map<String, Object>>) mapResult.get("file");
		    Map<String,Object> tempMap = null;
		    if(fileList.size()>0) {
			    for(int i=0, size=fileList.size(); i<size; i++){
			        tempMap = fileList.get(i);
			    }
		    }
			mv.addObject("files", tempMap);
		}


		mv.addObject("result", "ok");
		mv.setViewName("jsonView");
		return mv;
	}

}