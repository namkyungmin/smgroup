package com.smgroup.web.common.util;


import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {     

	@Value("#{sysinfo['sys.upload.path']}")
    private String uploadPath;
	
	@Value("#{sysinfo['sys.upload.boardpath']}")
    private String boardPath;

	@Value("#{sysinfo['sys.upload.boardslash']}")
    private String boardSlash;

    @Resource(name="ftpUtils")
    private FtpUtils ftpUtils;

    Logger log = LoggerFactory.getLogger(this.getClass());
    public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
    	if(request.getServerName().equals("smgroup.dal.so")) {
    		uploadPath = "/storage/local/apache-tomcat-8.5.28/node-files/smgroup";
    	}
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
        HttpSession httpSession = (HttpSession) request.getSession();
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        String boardIdx = String.valueOf(map.get("IDX"));
        String uploadFolder=String.valueOf(map.get("CATESLUG"))+boardSlash;
        String fileFolder=httpSession.getServletContext().getRealPath(boardPath)+uploadFolder;
		File f = new File(uploadPath);
		if (f.exists() && f.isDirectory()) {
			fileFolder=uploadPath+boardPath+ uploadFolder;
		}
        
        File file = new File(fileFolder);
        if(file.exists() == false){
            file.mkdirs();
        }

        int fileSort = 0;
        String fileOldInput = "";
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                 
                file = new File(fileFolder+storedFileName);
                
				listMap = new HashMap<String,Object>();
					String fileSection = multipartFile.getName().split("_")[0];
				if(fileSection.equals(fileOldInput)){
					fileSort++;
				}else{
					fileOldInput = fileSection;
					fileSort = 1;
				}
                multipartFile.transferTo(file);
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                listMap.put("FILE_GUBUN", fileSection);
                listMap.put("FILE_SORT", fileSort);
                listMap.put("PATH_NAME", boardPath+uploadFolder);
                list.add(listMap);
                
                ftpUpload(request.getServerName(),fileFolder,uploadFolder,storedFileName);
            }
        }
        return list;
    }
    
    public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
    	if(request.getServerName().equals("smgroup.dal.so")) {
    		uploadPath = "/storage/local/apache-tomcat-8.5.28/node-files/smgroup";
    	}
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
        HttpSession httpSession = (HttpSession) request.getSession();
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        String boardIdx = String.valueOf(map.get("IDX"));
        String requestName = null;
        String idx = null;

        String uploadFolder=String.valueOf(map.get("CATESLUG"))+boardSlash;
        String fileFolder=httpSession.getServletContext().getRealPath(boardPath)+uploadFolder;
		File f = new File(uploadPath);
		if (f.exists() && f.isDirectory()) {
			fileFolder=uploadPath+boardPath+ uploadFolder;
		}
        
        File file = new File(fileFolder);
        if(file.exists() == false){
            file.mkdirs();
        }


        int fileSort = 0;
        String fileOldInput = "";
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			String fileSection = multipartFile.getName().split("_")[0];
			if(fileSection.equals(fileOldInput)){
				fileSort++;
			}else{
				fileOldInput = fileSection;
				fileSort = 1;
			}
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                
                multipartFile.transferTo(new File(fileFolder+storedFileName));

                listMap = new HashMap<String,Object>();
                requestName = multipartFile.getName();
                idx = fileSection+"IDX_"+requestName.substring(requestName.indexOf("_")+1);
                if(map.get(idx)!=null) {
                		listMap.put("IS_NEW", "N");
                		listMap.put("FILE_IDX", map.get(idx));
                }else {
                		listMap.put("IS_NEW", "Y");
                }
                
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                listMap.put("FILE_GUBUN", fileSection);
                listMap.put("FILE_SORT", fileSort);
                listMap.put("PATH_NAME", boardPath+uploadFolder);
                list.add(listMap);
                ftpUpload(request.getServerName(),fileFolder,uploadFolder,storedFileName);
            }/*else{
                requestName = multipartFile.getName();
                idx = fileSection+"IDX_"+requestName.substring(requestName.indexOf("_")+1);
                if(map.containsKey(idx) == true && map.get(idx) != null){
                    listMap = new HashMap<String,Object>();
                    listMap.put("IS_NEW", "N");
                    listMap.put("FILE_IDX", map.get(idx));
                    list.add(listMap);
                }
            }*/
        }
        return list;
    }
    

    public List<Map<String,Object>> parseInsertFile(HttpServletRequest request) throws Exception{
    	if(request.getServerName().equals("smgroup.dal.so")) {
    		uploadPath = "/storage/local/apache-tomcat-8.5.28/node-files/smgroup";
    	}
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
        HttpSession httpSession = (HttpSession) request.getSession();
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String uploadFolder=boardPath+"editor"+boardSlash;
        String fileFolder=httpSession.getServletContext().getRealPath(boardSlash)+uploadFolder;
		File f = new File(uploadPath);
		if (f.exists() && f.isDirectory()) {
			fileFolder=uploadPath;
			fileFolder = fileFolder + uploadFolder;
		}		
        File file = new File(fileFolder);
        if(file.exists() == false){
            file.mkdirs();
        }


        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                 
                file = new File(fileFolder+storedFileName);
                multipartFile.transferTo(file);
                 
                listMap = new HashMap<String,Object>();
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                list.add(listMap);
                ftpUpload(request.getServerName(),fileFolder,"/editor",storedFileName);
            }
        }
        return list;
    }
    

    public String parseItemFile(HttpServletRequest request, String filepath, String inputname) throws Exception{

        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;

    	if(request.getServerName().equals("smgroup.dal.so")) {
    		uploadPath = "/storage/local/apache-tomcat-8.5.28/node-files/smgroup";
    	}

        String uploadFolder=boardPath+"/"+filepath+"/";
        HttpSession httpSession = (HttpSession) request.getSession();
        String fileFolder=httpSession.getServletContext().getRealPath(boardSlash)+uploadFolder;
        
		File f = new File(uploadPath);
		if (f.exists() && f.isDirectory()) {
			fileFolder=uploadPath;
			fileFolder = fileFolder + uploadFolder;
		}		
        File file = new File(fileFolder);
        if(file.exists() == false){
            file.mkdirs();
        }
        
        multipartFile = multipartHttpServletRequest.getFile(inputname);
        if(multipartFile!=null) {
        if(multipartFile.isEmpty() == false){
            originalFileName = multipartFile.getOriginalFilename();
            originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
            storedFileName = CommonUtils.getRandomString() + originalFileExtension;
             
            file = new File(fileFolder+storedFileName);
            multipartFile.transferTo(file);
            ftpUpload(request.getServerName(),fileFolder,"/"+filepath,storedFileName);
        }
        }
        return storedFileName;
    }
    private void ftpUpload(String servername, String fileFolder, String uploadFolder, String storedFileName) {

        try {
        	if(!servername.equals("smgroup.dal.so")) {
        	ftpUtils.sendFileToOtherServer(fileFolder,uploadFolder,storedFileName);
        	}
        }catch(Exception e) {
        	
        }
    }
}