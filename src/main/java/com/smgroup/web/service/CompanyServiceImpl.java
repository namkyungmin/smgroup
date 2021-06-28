package com.smgroup.web.service;

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

import com.smgroup.web.dao.CompanyDAO;
import com.smgroup.web.common.CommandMap;
import com.smgroup.web.common.util.FileUtils;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{
	Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name="fileUtils")
    private FileUtils fileUtils;
     
    @Resource(name="companyDAO")
    private CompanyDAO companyDAO;

    @Override
    public Map<String, Object> selectCompanyList(Map<String, Object> map) throws Exception {
        return companyDAO.selectCompanyList(map);
    }
    @Override
    public Map<String, Object> selectCompanyAllList(Map<String, Object> map) throws Exception {
    	Map<String, Object> reMap = new LinkedHashMap<String, Object>();
		List<Map<String,Object>> reList = companyDAO.selectCompanyAllList(map);
		reMap.put("result", reList);
        return reMap;
    }
	@Override
	public int selectCompanySlug(Map<String, Object> map) throws Exception {
	    return companyDAO.selectCompanySlug(map);
	}
	
    @Override
    public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception {
        return companyDAO.selectFileList(map);
    }
    
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertCompany(Map<String, Object> map, HttpServletRequest request) throws Exception {
		String filepath="company";
		String filename= null;
		
		map.put("PATH","/upload/"+filepath+"/");
		filename= fileUtils.parseItemFile(request,filepath,"THUMB");
		if(filename!=null) {
			map.put("THUMB",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"THUMB_EN");
		if(filename!=null) {
			map.put("THUMB_EN",filename);
		}
		
	    companyDAO.insertCompany(map);
	}
	
	@Override
	public Map<String, Object> selectCompanyDetail(Map<String, Object> map) throws Exception {
		if(map.get("PAGETYPE")!=null) {
			if(!map.get("PAGETYPE").equals("ADMIN")) {
				companyDAO.updateHitCnt(map);
			}
		}
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = companyDAO.selectCompanyDetail(map);
	    resultMap.put("map", tempMap);
	    
	    return resultMap;
	}
	
	@Override
	public int selectCompanyCount(Map<String, Object> map) throws Exception {
	    return companyDAO.selectCompanyCount(map);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void updateCompany(Map<String, Object> map, HttpServletRequest request) throws Exception{
		String filepath="company";
		String filename= null;
		
		map.put("PATH","/upload/"+filepath+"/");
		filename= fileUtils.parseItemFile(request,filepath,"THUMB");
		if(filename!=null) {
			map.put("THUMB",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"THUMB_EN");
		if(filename!=null) {
			map.put("THUMB_EN",filename);
		}
		
	    companyDAO.updateCompany(map);
	}
	
	@Override
	public void deleteCompany(Map<String, Object> map) throws Exception {
	    companyDAO.deleteCompany(map);
	}

	@Transactional(rollbackFor = Exception.class)
	public void updateHitCnt(Map<String, Object> map) throws Exception{
		companyDAO.updateHitCnt(map);
	}
	

    @Override
    public Map<String, Object>  selectCompanyContents(Map<String, Object> map) throws Exception {
    	Map<String, Object> reMap = new LinkedHashMap<String, Object>();
		List<Map<String,Object>> reList = companyDAO.selectCompanyContents(map);
		reMap.put("map", reList);
        return reMap;
    }
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void updateCompanySub(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    Map<String, Object> mapCount = new HashMap<String,Object>();
	    mapCount.put("IDX",map.get("IDX"));
	    mapCount.put("PARENT_IDX",map.get("IDX"));
		String filepath="company";
		String filename= null;

		int countSub = companyDAO.selectCompanySubCount(mapCount);
		
		map.put("PATH","/upload/"+filepath+"/");
		filename= fileUtils.parseItemFile(request,filepath,"LOGO");
		if(filename!=null) {
			map.put("LOGO",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"LOGO_EN");
		if(filename!=null) {
			map.put("LOGO_EN",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"LOGO_MO");
		if(filename!=null) {
			map.put("LOGO_MO",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"LOGO_EN_MO");
		if(filename!=null) {
			map.put("LOGO_EN_MO",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"CONTENT_IMGONE");
		if(filename!=null) {
			map.put("CONTENT_IMGONE",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"CONTENT_IMGONE_EN");
		if(filename!=null) {
			map.put("CONTENT_IMGONE_EN",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"CONTENT_IMGTWO");
		if(filename!=null) {
			map.put("CONTENT_IMGTWO",filename);
		}
		filename= fileUtils.parseItemFile(request,filepath,"CONTENT_IMGTWO_EN");
		if(filename!=null) {
			map.put("CONTENT_IMGTWO_EN",filename);
		}
		log.info(String.valueOf(countSub));
		if(countSub==0) {
			companyDAO.insertCompanySub(map);
		}else {
			companyDAO.updateCompanySub(map);
		}

	    CommandMap commandMapRecom = new CommandMap();
	    commandMapRecom.put("IDX", mapCount.get("IDX"));
	    companyDAO.deleteCompanyContents(commandMapRecom.getMap());
	    
	    for(int i=1;Integer.parseInt((String) map.get("krInt"))>=i;i++) {
	    	Map<String, Object> companyContents = new HashMap<String,Object>();
	    	companyContents.put("IDX",mapCount.get("IDX"));
	    	companyContents.put("LANG","kr");
	    	String confile = null;
	    	
	    	confile = fileUtils.parseItemFile(request,filepath,"KR_CON_IMAGE_"+i);
			if(confile!=null) {
				companyContents.put("CON_IMAGE",confile);
			}else{
	    		if(map.get("KR_OLD_CON_IMAGE_"+i)!=null) {
	    			companyContents.put("CON_IMAGE",map.get("KR_OLD_CON_IMAGE_"+i));
	    		}
	    	}
			
	    	confile = fileUtils.parseItemFile(request,filepath,"KR_CON_IMAGE_MO_"+i);
			if(confile!=null) {
				companyContents.put("CON_IMAGE_MO",confile);
			}else{
	    		if(map.get("KR_OLD_CON_IMAGE_MO_"+i)!=null) {
	    			companyContents.put("CON_IMAGE_MO",map.get("KR_OLD_CON_IMAGE_MO_"+i));
	    		}
	    	}
			
	    	companyContents.put("CON_TITLE",map.get("KR_CON_TITLE_"+i));
	    	companyContents.put("CON_BODY",map.get("KR_CON_BODY_"+i));
	    	companyContents.put("CON_SORT",i);
	    	if(companyContents.get("CON_TITLE")!=null) {
	    		companyDAO.insertCompanyContents(companyContents);
	    	}
	    }
	    for(int i=1;Integer.parseInt((String) map.get("enInt"))>=i;i++) {
	    	Map<String, Object> companyContents = new HashMap<String,Object>();
	    	companyContents.put("IDX",mapCount.get("IDX"));
	    	companyContents.put("LANG","en");
	    	String confile = null;
	    	
	    	confile = fileUtils.parseItemFile(request,filepath,"EN_CON_IMAGE_"+i);
			if(confile!=null) {
				companyContents.put("CON_IMAGE",confile);
			}else{
	    		if(map.get("EN_OLD_CON_IMAGE_"+i)!=null) {
	    			companyContents.put("CON_IMAGE",map.get("EN_OLD_CON_IMAGE_"+i));
	    		}
	    	}
			
	    	confile = fileUtils.parseItemFile(request,filepath,"EN_CON_IMAGE_MO_"+i);
			if(confile!=null) {
				companyContents.put("CON_IMAGE_MO",confile);
			}else{
	    		if(map.get("EN_OLD_CON_IMAGE_MO_"+i)!=null) {
	    			companyContents.put("CON_IMAGE_MO",map.get("EN_OLD_CON_IMAGE_MO_"+i));
	    		}
	    	}
			
	    	companyContents.put("CON_TITLE",map.get("EN_CON_TITLE_"+i));
	    	companyContents.put("CON_BODY",map.get("EN_CON_BODY_"+i));
	    	companyContents.put("CON_SORT",i);
	    	if(companyContents.get("CON_TITLE")!=null) {
	    		companyDAO.insertCompanyContents(companyContents);	
	    	}
	    	
	    }
	}
	
	@Override
	public void deleteCompanySub(Map<String, Object> map) throws Exception {
	    companyDAO.deleteCompanySub(map);
	}
	@Override
	public void updateSort(Map<String, Object> map) throws Exception {
	    companyDAO.updateSort(map);
	}
}	