package com.smgroup.web.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.smgroup.web.common.dao.AbstractDAO;
 
@Repository("companyDAO")
public class CompanyDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCompanyList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("company.selectCompanyList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCompanyAllList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("company.selectCompanyList", map);
	}
	
	public int selectCompanySlug(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("company.selectCompanySlug", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("company.selectFileList", map);
	}
	public void insertCompany(Map<String, Object> map) throws Exception{
	    insert("company.insertCompany", map);
	}
	public void updateHitCnt(Map<String, Object> map) throws Exception{
	    update("company.updateHitCnt", map);
	}
	 
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCompanyDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("company.selectCompanyDetail", map);
	}

	public int selectCompanyCount(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("company.selectCompanyCount", map);
	}
	
	public void updateCompany(Map<String, Object> map) throws Exception{
	    update("company.updateCompany", map);
	}
	public void deleteCompany(Map<String, Object> map) throws Exception{
	    update("company.deleteCompany", map);
	}

	public int selectCompanySubCount(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("company.selectCompanySubCount", map);
	}
	
	public void insertCompanySub(Map<String, Object> map) throws Exception{
	    update("company.insertCompanySub", map);
	}
	public void updateCompanySub(Map<String, Object> map) throws Exception{
	    update("company.updateCompanySub", map);
	}
	public void deleteCompanySub(Map<String, Object> map) throws Exception{
	    update("company.deleteCompanySub", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCompanyContents(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("company.selectCompanyContents", map);
	}

	public int selectCompanyContentsCount(Map<String, Object> map) throws Exception{
	    return (Integer) selectOne("company.selectCompanyContentsCount", map);
	}

	
	public void insertCompanyContents(Map<String, Object> map) throws Exception{
	    update("company.insertCompanyContents", map);
	}
	public void updateCompanyContents(Map<String, Object> map) throws Exception{
	    update("company.updateCompanyContents", map);
	}
	public void deleteCompanyContents(Map<String, Object> map) throws Exception{
	    update("company.deleteCompanyContents", map);
	}
	public void updateSort(Map<String, Object> map) throws Exception{
	    update("company.updateSort", map);
	}
}