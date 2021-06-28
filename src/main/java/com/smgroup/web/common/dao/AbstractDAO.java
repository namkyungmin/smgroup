package com.smgroup.web.common.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.util.StringUtils;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


public class AbstractDAO {
    protected Log log = LogFactory.getLog(AbstractDAO.class);
    /*
    @Autowired
    private SqlSessionTemplate sqlSession;
    */
    @Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }
     
    public Object insert(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }
     
    public Object update(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }
     
    public Object delete(String queryId, Object params){
    	log.info(queryId);
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }
     
    public Object selectOne(String queryId){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }
     
    public Object selectOne(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }
     
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId){
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }
     
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }

    @SuppressWarnings({ "rawtypes", "unchecked" })
    public Map selectPagingList(String queryId, Object params){
        printQueryId(queryId);
        Map<String,Object> map = (Map<String,Object>)params;

        Map<String,Object> returnMap = new HashMap<String,Object>();
        if("json".equals(map.get("PAGE"))){
	        List<Map<String,Object>> list = sqlSession.selectList(queryId,params);
	        returnMap.put("result", list);
        }else{
        	PaginationInfo paginationInfo = null;
	         
	        if(map.containsKey("currentPageNo") == false || StringUtils.isEmpty(map.get("currentPageNo")) == true)
	            map.put("currentPageNo","1");
	        
	        paginationInfo = new PaginationInfo();
	        paginationInfo.setCurrentPageNo(Integer.parseInt(map.get("currentPageNo").toString()));
	        if(map.containsKey("PAGE_ROW") == false || StringUtils.isEmpty(map.get("PAGE_ROW")) == true){
	            paginationInfo.setRecordCountPerPage(15);
	        }
	        else{
	            paginationInfo.setRecordCountPerPage(Integer.parseInt(map.get("PAGE_ROW").toString()));
	        }
	        if(map.containsKey("PAGE_SIZE") == false || StringUtils.isEmpty(map.get("PAGE_SIZE")) == true){
	        		paginationInfo.setPageSize(10);
	        }
	        else{
	        		paginationInfo.setPageSize(Integer.parseInt(map.get("PAGE_ROW").toString()));
	        }
	        
	         
	        int start = paginationInfo.getFirstRecordIndex();
	        //oracle
	        //int end = start + paginationInfo.getRecordCountPerPage();
	        //mysql 
	        int end = paginationInfo.getRecordCountPerPage();
	        List<Map<String,Object>> totalList = selectList(queryId,map);
	        map.put("START",start);
	        map.put("END",end);

	        log.info("============");
	        log.info("START::"+map.get("START").toString());
	        log.info("END::"+map.get("END").toString());
	        params = map;
	        
	        List<Map<String,Object>> list = selectList(queryId,params);
	         
	        if(list.size() == 0){
	            map = new HashMap<String,Object>();
	            map.put("TOTAL_COUNT",0);  
	            //list.add(map);
	             
	            if(paginationInfo != null){
	                paginationInfo.setTotalRecordCount(0);
	                returnMap.put("paginationInfo", paginationInfo);
	            }
	        }
	        else{
	            if(paginationInfo != null){
	                //paginationInfo.setTotalRecordCount(Integer.parseInt(list.get(0).get("TOTAL_COUNT").toString()));
	                paginationInfo.setTotalRecordCount(totalList.size());
	                returnMap.put("paginationInfo", paginationInfo);
	            }
	        }
	        log.info(list.size());
	        log.info("============");
	        returnMap.put("result", list);
        }
        return returnMap;
    }
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public Map selectPagingComment(String queryId, Object params){
        printQueryId(queryId);
         
        Map<String,Object> map = (Map<String,Object>)params;
        PaginationInfo paginationInfo = null;
         
        if(map.containsKey("commentPageNo") == false || StringUtils.isEmpty(map.get("commentPageNo")) == true)
            map.put("commentPageNo","1");
         
        paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(Integer.parseInt(map.get("commentPageNo").toString()));
        if(map.containsKey("PAGE_ROW") == false || StringUtils.isEmpty(map.get("PAGE_ROW")) == true){
            paginationInfo.setRecordCountPerPage(10);
        }
        else{
            paginationInfo.setRecordCountPerPage(Integer.parseInt(map.get("PAGE_ROW").toString()));
        }
        paginationInfo.setPageSize(10);
         
        int start = paginationInfo.getFirstRecordIndex();
        int end = start + paginationInfo.getRecordCountPerPage();
        map.put("START",start+1);
        map.put("END",end);
         
        params = map;
         
        Map<String,Object> returnMap = new HashMap<String,Object>();
        List<Map<String,Object>> list = sqlSession.selectList(queryId,params);
         
        if(list.size() == 0){
            map = new HashMap<String,Object>();
            map.put("TOTAL_COUNT",0);  
            //list.add(map);
             
            if(paginationInfo != null){
                paginationInfo.setTotalRecordCount(0);
                returnMap.put("paginationInfo", paginationInfo);
            }
        }
        else{
            if(paginationInfo != null){
                paginationInfo.setTotalRecordCount(Integer.parseInt(list.get(0).get("TOTAL_COUNT").toString()));
                returnMap.put("paginationInfo", paginationInfo);
            }
        }
        returnMap.put("result", list);
        return returnMap;
    }
}
