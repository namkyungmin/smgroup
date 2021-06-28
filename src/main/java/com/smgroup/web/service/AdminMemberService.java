package com.smgroup.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminMemberService {
	Map<String, Object> selectMemberList(Map<String, Object> map) throws Exception;
	void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
    Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception;
    void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteMember(Map<String, Object> map) throws Exception;

    Map<String, Object> login(Map<String, Object> map) throws Exception;
    Map<String, Object> emailSearch(Map<String, Object> map) throws Exception;
    

	void insertIP(Map<String, Object> map, HttpServletRequest request) throws Exception;
    int selectIPSearch(Map<String, Object> map) throws Exception;
    List<Map<String, Object>> selectIP(Map<String, Object> map) throws Exception;
    void updateIP(Map<String, Object> map, HttpServletRequest request) throws Exception;
    void deleteIP(Map<String, Object> map) throws Exception;
}