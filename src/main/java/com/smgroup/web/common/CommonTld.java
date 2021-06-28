package com.smgroup.web.common;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CommonTld {
	Logger log = LoggerFactory.getLogger(this.getClass());
	public static String getYouTubeId (String youTubeUrl) {
	    String pattern = "(?<=youtu.be/|watch\\?v=|/videos/|embed\\/)[^#\\&\\?]*";
	    Pattern compiledPattern = Pattern.compile(pattern);
	    Matcher matcher = compiledPattern.matcher(youTubeUrl);
	    if(matcher.find()){
	        return matcher.group();
	    } else {
	        return "error";  
	    }
	}
	public static boolean getMenusBool (String menus,String menu) {
		String[] menusArray = menus.split(",");
		boolean menuBool = false;
		for (int i = 0; i < menusArray.length; i++) {
		    if(menusArray[i].toString().equals(menu.toString())) {
		    	menuBool = true;
		    }
		}

		return menuBool;
	}
	
}
