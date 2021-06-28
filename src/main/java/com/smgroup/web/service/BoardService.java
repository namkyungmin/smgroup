package com.smgroup.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface BoardService {
	Map<String, Object> selectBoardCategory(Map<String, Object> map) throws Exception;
	Map<String, Object> selectBoardShortCategory(Map<String, Object> map) throws Exception;
	int selectBoardCategorySlug(String str) throws Exception;
	String selectBoardCategoryIpSlug(Integer str) throws Exception;
	int selectBoardCateCntSlug(Map<String, Object> map) throws Exception;
    Map<String, Object> selectBoardCategoryDetail(Map<String, Object> map) throws Exception;
	void insertCategory(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void updateCategory(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteCategory(Map<String, Object> map) throws Exception;
	Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectBoardRecomList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception;
	int selectBoardSlug(Map<String, Object> map) throws Exception;
	int selectBoardSlugIDX(Map<String, Object> map) throws Exception;
	void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
    Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;
    void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteBoard(Map<String, Object> map) throws Exception;
    void deleteFile(Map<String, Object> map) throws Exception;
	int selectBoardCount(Map<String, Object> map) throws Exception;
    void updateHitCnt(Map<String, Object> map) throws Exception;
}