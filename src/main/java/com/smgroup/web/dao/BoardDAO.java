package com.smgroup.web.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.smgroup.web.common.dao.AbstractDAO;
 
@Repository("boardDAO")
public class BoardDAO extends AbstractDAO{
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardCategory(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("board.selectBoardCategory", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardShortCategory(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("board.selectBoardShortCategory", map);
	}
	public int selectBoardCategorySlug(String str) throws Exception{
	    return (Integer) selectOne("board.selectBoardCategorySlug", str);
	}
	public String selectBoardCategoryIpSlug(Integer str) throws Exception{
	    return (String) selectOne("board.selectBoardCategoryIpSlug", str);
	}
	public int selectBoardCateCntSlug(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("board.selectBoardCateCntSlug", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardCategoryDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("board.selectBoardCategoryDetail", map);
	}
	public void insertCategory(Map<String, Object> map) throws Exception{
	    insert("board.insertCategory", map);
	}
	public void updateCategory(Map<String, Object> map) throws Exception{
	    update("board.updateCategory", map);
	}
	public void deleteCategory(Map<String, Object> map) throws Exception{
	    update("board.deleteCategory", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("board.selectBoardList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardRecomList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("board.selectBoardRecomList", map);
	}
	
	public int selectBoardSlug(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("board.selectBoardSlug", map);
	}
	
	public int selectBoardSlugIDX(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("board.selectBoardSlugIDX", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("board.selectFileList", map);
	}
	public void insertBoard(Map<String, Object> map) throws Exception{
	    insert("board.insertBoard", map);
	}
	public void updateHitCnt(Map<String, Object> map) throws Exception{
	    update("board.updateHitCnt", map);
	}
	 
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("board.selectBoardDetail", map);
	}

	public int selectBoardCount(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("board.selectBoardCount", map);
	}
	
	public void updateBoard(Map<String, Object> map) throws Exception{
	    update("board.updateBoard", map);
	}
	public void deleteBoard(Map<String, Object> map) throws Exception{
	    update("board.deleteBoard", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("board.insertFile", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("board.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("board.updateFile", map);
	}
	public void deleteFile(Map<String, Object> map) throws Exception{
	    update("board.deleteFile", map);
	}
	public void updateMainStatus(Map<String, Object> map) throws Exception{
	    update("board.updateMainStatus", map);
	}
}