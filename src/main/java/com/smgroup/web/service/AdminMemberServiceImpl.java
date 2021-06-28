package com.smgroup.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.smgroup.web.dao.AdminMemberDAO;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService{
	Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name="adminMemberDAO")
    private AdminMemberDAO adminMemberDAO;

	@Override
	public Map<String, Object> emailSearch(Map<String, Object> map) throws Exception {
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = adminMemberDAO.emailSearch(map);
	    resultMap.put("map", tempMap);
	    return resultMap;
	}
	@Override
	public Map<String, Object> login(Map<String, Object> map) throws Exception {
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = adminMemberDAO.login(map);
	    Map<String, Object> loginMap = new HashMap<String,Object>();
	    loginMap.put("IDX", tempMap.get("IDX"));
	    adminMemberDAO.updateLogin(loginMap);
	    resultMap.put("map", tempMap);
	    return resultMap;
	}
    @Override
    public Map<String, Object> selectMemberList(Map<String, Object> map) throws Exception {
        return adminMemberDAO.selectMemberList(map);
    }
	
	@Override
	public void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
	    adminMemberDAO.insertMember(map);
	}
	
	@Override
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception {
	    //adminMemberDAO.updateHitCnt(map);
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = adminMemberDAO.selectMemberDetail(map);
	    resultMap.put("map", tempMap);
	    
	    return resultMap;
	}
	
	@Override
	public void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    adminMemberDAO.updateMember(map);
	}
	
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
	    adminMemberDAO.deleteMember(map);
	}


	@Override
	public int selectIPSearch(Map<String, Object> map) throws Exception {
	    return adminMemberDAO.selectIPSearch(map);
	}
	@Override
	public void insertIP(Map<String, Object> map, HttpServletRequest request) throws Exception {
	    adminMemberDAO.insertIP(map);
	}
    @Override
    public List<Map<String, Object>> selectIP(Map<String, Object> map) throws Exception {
        return adminMemberDAO.selectIP(map);
    }
    
	@Override
	public void updateIP(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    adminMemberDAO.updateIP(map);
	}
	
	@Override
	public void deleteIP(Map<String, Object> map) throws Exception {
	    adminMemberDAO.deleteIP(map);
	}
	
}	