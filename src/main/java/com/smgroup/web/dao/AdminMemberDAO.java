package com.smgroup.web.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.smgroup.web.common.dao.AbstractDAO;

 
@Repository("adminMemberDAO")
public class AdminMemberDAO extends AbstractDAO{
	@SuppressWarnings("unchecked")
	public Map<String, Object> login(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("adminMember.login", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> emailSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("adminMember.emailSearch", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("adminMember.selectMemberList", map);
	}
	public void insertMember(Map<String, Object> map) throws Exception{
	    insert("adminMember.insertMember", map);
	}
	public void updateLogin(Map<String, Object> map) throws Exception{
	    update("adminMember.updateLogin", map);
	}
	 
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("adminMember.selectMemberDetail", map);
	}
	
	
	public void updateMember(Map<String, Object> map) throws Exception{
	    update("adminMember.updateMember", map);
	}
	public void deleteMember(Map<String, Object> map) throws Exception{
	    update("adminMember.deleteMember", map);
	}
	

	public void insertIP(Map<String, Object> map) throws Exception{
	    insert("adminMember.insertIP", map);
	}

	public int selectIPSearch(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("adminMember.selectIPSearch", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectIP(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("adminMember.selectIP", map);
	}
	public void updateIP(Map<String, Object> map) throws Exception{
	    update("adminMember.updateIP", map);
	}
	public void deleteIP(Map<String, Object> map) throws Exception{
	    update("adminMember.deleteIP", map);
	}
	
}