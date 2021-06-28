package com.smgroup.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CompanyService {
	Map<String, Object> selectCompanyList(Map<String, Object> map) throws Exception;
	Map<String, Object> selectCompanyAllList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception;
	int selectCompanySlug(Map<String, Object> map) throws Exception;
	void insertCompany(Map<String, Object> map, HttpServletRequest request) throws Exception;
    Map<String, Object> selectCompanyDetail(Map<String, Object> map) throws Exception;
    void updateCompany(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteCompany(Map<String, Object> map) throws Exception;
    void updateCompanySub(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteCompanySub(Map<String, Object> map) throws Exception;
	int selectCompanyCount(Map<String, Object> map) throws Exception;

	Map<String, Object> selectCompanyContents(Map<String, Object> map) throws Exception;
    void updateHitCnt(Map<String, Object> map) throws Exception;
    void updateSort(Map<String, Object> map) throws Exception;
}