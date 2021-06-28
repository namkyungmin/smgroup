package com.smgroup.web.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smgroup.web.dao.BoardDAO;

import com.smgroup.web.common.util.FileUtils;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name="fileUtils")
    private FileUtils fileUtils;
     
    @Resource(name="boardDAO")
    private BoardDAO boardDAO;

    @Override
    public Map<String, Object> selectBoardCategory(Map<String, Object> map) throws Exception {
        return boardDAO.selectBoardCategory(map);
    }
    @Override
    public Map<String, Object> selectBoardShortCategory(Map<String, Object> map) throws Exception {
        return boardDAO.selectBoardShortCategory(map);
    }
	@Override
	public int selectBoardCategorySlug(String str) throws Exception {
	    return boardDAO.selectBoardCategorySlug(str);
	}
	@Override
	public String selectBoardCategoryIpSlug(Integer str) throws Exception {
	    return boardDAO.selectBoardCategoryIpSlug(str);
	}
	@Override
	public int selectBoardCateCntSlug(Map<String, Object> map) throws Exception {
	    return boardDAO.selectBoardCateCntSlug(map);
	}
	@Override
	public Map<String, Object> selectBoardCategoryDetail(Map<String, Object> map) throws Exception {
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = boardDAO.selectBoardCategoryDetail(map);
	    resultMap.put("map", tempMap);
	    return resultMap;
	}
	
	@Override
	public void insertCategory(Map<String, Object> map, HttpServletRequest request) throws Exception {
	    boardDAO.insertCategory(map);
	}
	@Override
	public void updateCategory(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    boardDAO.updateCategory(map);
	}
	
	@Override
	public void deleteCategory(Map<String, Object> map) throws Exception {
	    boardDAO.deleteCategory(map);
	}
    @Override
    public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
        return boardDAO.selectBoardList(map);
    }
    @Override
    public Map<String, Object> selectBoardRecomList(Map<String, Object> map) throws Exception {
    	Map<String, Object> reMap = new LinkedHashMap<String, Object>();
		List<Map<String,Object>> reList = boardDAO.selectBoardRecomList(map);
		reMap.put("result", reList);
        return reMap;
    }
	@Override
	public int selectBoardSlug(Map<String, Object> map) throws Exception {
	    return boardDAO.selectBoardSlug(map);
	}
	@Override
	public int selectBoardSlugIDX(Map<String, Object> map) throws Exception {
	    return boardDAO.selectBoardSlugIDX(map);
	}
	
    @Override
    public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception {
        return boardDAO.selectFileList(map);
    }
    
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
	    boardDAO.insertBoard(map);
	    List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
	    for(int i=0, size=list.size(); i<size; i++){
	        boardDAO.insertFile(list.get(i));
	    }
	}
	
	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
		if(map.get("PAGETYPE")!=null) {
			if(!map.get("PAGETYPE").equals("ADMIN")) {
				boardDAO.updateHitCnt(map);
			}
		}
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = boardDAO.selectBoardDetail(map);
	    resultMap.put("map", tempMap);

	    Map<String, Object> categoryId = new HashMap<String,Object>();
	    categoryId.put("PID",tempMap.get("PARENT_IDX"));
	    Map<String, Object> categoryMap = boardDAO.selectBoardCategoryDetail(categoryId);
	    
	    List<String> imagesList = Arrays.asList(categoryMap.get("IMAGES").toString().split(","));
	    
	    Map<String, Object> inputFiles = new LinkedHashMap<String, Object>();
	    Map<String, Object> inputMobFiles = new LinkedHashMap<String, Object>();
	    for(String item : imagesList){
    		map.put("GUBUN", item);
    		List<Map<String,Object>> fileList = boardDAO.selectFileList(map);
    		inputFiles.put(item, fileList);
    		map.put("GUBUN", "mob"+item);
    		List<Map<String,Object>> fileMobList = boardDAO.selectFileList(map);
    		inputMobFiles.put("mob"+item, fileMobList);
	    }
	    if(inputFiles.size()>0) {
	    		resultMap.put("files", inputFiles);
	    }
	    if(inputFiles.size()>0) {
	    		resultMap.put("mobfiles", inputMobFiles);
	    }
	    return resultMap;
	}
	
	@Override
	public int selectBoardCount(Map<String, Object> map) throws Exception {
	    return boardDAO.selectBoardCount(map);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    boardDAO.updateBoard(map);
	     
	    //boardDAO.deleteFileList(map);
	    List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map, request);
	    Map<String,Object> tempMap = null;
	    for(int i=0, size=list.size(); i<size; i++){
	        tempMap = list.get(i);
	        if(tempMap.get("IS_NEW").equals("Y")){
	            boardDAO.insertFile(tempMap);
	        }else{
	            boardDAO.updateFile(tempMap);
	        }
	    }
	    //boardDAO.updateMainStatus(map);
	}
	
	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception {
	    boardDAO.deleteBoard(map);
	    boardDAO.deleteFileList(map);
	}
	@Override
	public void deleteFile(Map<String, Object> map) throws Exception {
	    	boardDAO.deleteFile(map);
	}

	@Transactional(rollbackFor = Exception.class)
	public void updateHitCnt(Map<String, Object> map) throws Exception{
		boardDAO.updateHitCnt(map);
	}
	
	
}	