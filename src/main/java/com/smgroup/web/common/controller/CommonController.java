package com.smgroup.web.common.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.smgroup.web.common.CommandMap;
import com.smgroup.web.common.service.CommonService;


import com.smgroup.web.common.util.FtpUtils;

@Controller
public class CommonController {
    Logger log = LoggerFactory.getLogger(this.getClass());
    
    
    @Resource(name="commonService")
    private CommonService commonService;

	@Value("#{sysinfo['sys.upload.path']}")
    private String uploadPath;
	
	@Value("#{sysinfo['sys.upload.boardpath']}")
    private String boardPath;

	@Value("#{sysinfo['sys.upload.boardslash']}")
    private String boardSlash;

	
    @RequestMapping(value="/downloadFile.do")
    public void downloadFile(CommandMap commandMap, HttpServletResponse response, HttpServletRequest request, HttpSession httpsession) throws Exception{
        Map<String,Object> map = commonService.selectFileInfo(commandMap.getMap());
        String storedFileName = (String)map.get("STORED_FILE_NAME");
        String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
		
        String uploadFolder=(String)map.get("PATH_NAME");
        if(request.getServerName().equals("smgroup.dal.so")) {
    		uploadPath = "/storage/local/apache-tomcat-8.5.28/node-files/smgroup";
    	}
        String fileFolder=httpsession.getServletContext().getRealPath(uploadFolder)+boardSlash;
		File f = new File(uploadPath);
		if (f.exists() && f.isDirectory()) {
			fileFolder=uploadPath + uploadFolder+boardSlash;
		}

        byte fileByte[] = FileUtils.readFileToByteArray(new File(fileFolder+storedFileName));
        
        response.setContentType("application/octet-stream");
        response.setContentLength(fileByte.length);
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.getOutputStream().write(fileByte);
        
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }

    @RequestMapping(value="/download.do")
    public void download(CommandMap commandMap, HttpServletResponse response,HttpServletRequest request, HttpSession httpsession) throws Exception{
	    	String filename = "";
    		String downloadFile = "";
	    	if(commandMap.get("filename")!=null){
	    		downloadFile = commandMap.get("filename").toString();
	    		filename=httpsession.getServletContext().getRealPath("/resource/file/")+boardSlash+downloadFile;
	    	}else{
	    		downloadFile = commandMap.get("file").toString();
	    		filename=httpsession.getServletContext().getRealPath("/")+downloadFile;
	    	}
	    	
	    	File file = new File(filename);
        byte fileByte[] = FileUtils.readFileToByteArray(file);
        
        response.setContentType("application/octet-stream");
        response.setContentLength(fileByte.length);
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(file.getName(),"UTF-8")+"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.getOutputStream().write(fileByte);
        
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }
    @Resource(name="fileUtils")
    private com.smgroup.web.common.util.FileUtils fileUtils;
    
    @RequestMapping(value="/editorUpload.do")
    public ModelAndView editorUpload(CommandMap commandMap, HttpServletRequest request) throws Exception{

	    ModelAndView mv = new ModelAndView("redirect:/resource/assets/editor/photo_uploader/popup/file_uploader.jsp");

	    List<Map<String,Object>> list = fileUtils.parseInsertFile(request);
	    
	    for(int i=0, size=list.size(); i<size; i++){
	        mv.addObject("filename", list.get(i).get("STORED_FILE_NAME"));
	    }
	    mv.addObject("byid",commandMap.get("byid"));
	    return mv;
    }

    @RequestMapping(value="/uploadSummernoteImageFile.do")
    public ModelAndView uploadSummernoteImageFile(CommandMap commandMap, HttpServletRequest request) throws Exception {

	    ModelAndView mv = new ModelAndView();

	    List<Map<String,Object>> list = fileUtils.parseInsertFile(request);
	    
	    for(int i=0, size=list.size(); i<size; i++){
	        mv.addObject("url", "/upload/editor/"+list.get(i).get("STORED_FILE_NAME"));
	    }
        mv.addObject("responseCode", "success");
	    mv.setViewName("jsonView");
	    return mv;
    }
}