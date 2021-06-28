package com.smgroup.web.common.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smgroup.web.common.CommonTld;

public class CommonUtils {

	protected static Log log = LogFactory.getLog(CommonUtils.class);

	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

	private static String jsonReadAll(Reader reader) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = reader.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static Map<String, Object> readJsonFromUrl(String url) throws IOException {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		InputStream is = new URL(url).openStream();
		try {
			// log.info("------------------------------------------------->"+url);
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = jsonReadAll(rd);
			@SuppressWarnings("unchecked")
			HashMap<String, Object> rs = new ObjectMapper().readValue(jsonText.toString(), HashMap.class);
			// log.info(rs);
			returnMap.put("result", rs);
		} finally {
			is.close();
		}
		return returnMap;
	}

	public static String fbDateFormat(String utcLongDateTime) {
		SimpleDateFormat fb_dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ssZZZZZ");
		SimpleDateFormat my_dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String localDateString = null;
		long when = 0;
		try {
			when = fb_dateFormat.parse(utcLongDateTime).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		localDateString = my_dateFormat.format(new Date(when + TimeZone.getDefault().getRawOffset()
				+ (TimeZone.getDefault().inDaylightTime(new Date()) ? TimeZone.getDefault().getDSTSavings() : 0)));
		return localDateString;
	}

	public static String instaDateFormat(String utcLongDateTime) {
		SimpleDateFormat my_dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String localDateString = null;
		long when = Long.parseLong(utcLongDateTime) * 1000;
		localDateString = my_dateFormat.format(new Date(when + TimeZone.getDefault().getRawOffset()
				+ (TimeZone.getDefault().inDaylightTime(new Date()) ? TimeZone.getDefault().getDSTSavings() : 0)));
		return localDateString;
	}

	public static void listSort(List<Map<String, Object>> list, String keyNm) {
		listSort(list, keyNm, false);
	}

	public static void listSort(List<Map<String, Object>> list, String keyNm, boolean descOrder) {
		Comparator<Map<String, Object>> comparator = new ListMapComparator(keyNm);
		Collections.sort(list, comparator);

		if (descOrder) {
			Collections.reverse(list);
		}
	}

	// 문자 바이이트 체크 부분....
	public static int GetMessageBytes(String str) {
		int wLen = 0;
		int charat;

		for (int i = 1; i < str.length(); i++) {
			charat = str.charAt(i);
			if (charat > 0 && charat < 255) {
				wLen = wLen + 1;
			} else {
				wLen = wLen + 2;
			}
		}

		return wLen;
	}

	/**
	 * Null 체크함수
	 * 
	 * @param String str - 리턴될 문자열 만약 null이면 공백을 반환한다.
	 * @return String 결과
	 */
	public static String nullCheck(String str) {
		if (null == str || str.equals(null) || str == "" || str.equals("") || str == "null")
			return "";
		else
			return str.trim();
	}

	/**
	 * Null 체크함수
	 * 
	 * @param String str - 리턴될 문자열 만약 null이면 공백을 반환한다.
	 * @return String 결과
	 */
	public static String nullCheckObject(Object obj) {
		if (obj == null)
			return "";
		else
			return obj.toString().trim();
	}

	public static String requestReplace(String paramValue, String gubun) {
		String result = "";

		if (paramValue != null) {

			paramValue = paramValue.replaceAll("<", "&lt;").replaceAll(">", "&gt;");

			paramValue = paramValue.replaceAll("\\*", "");
			paramValue = paramValue.replaceAll("\\?", "");
			paramValue = paramValue.replaceAll("\\[", "");
			paramValue = paramValue.replaceAll("\\{", "");
			paramValue = paramValue.replaceAll("\\(", "");
			paramValue = paramValue.replaceAll("\\)", "");
			paramValue = paramValue.replaceAll("\\^", "");
			paramValue = paramValue.replaceAll("\\$", "");
			paramValue = paramValue.replaceAll("'", "");
			paramValue = paramValue.replaceAll("@", "");
			paramValue = paramValue.replaceAll("%", "");
			paramValue = paramValue.replaceAll(";", "");
			paramValue = paramValue.replaceAll(":", "");
			paramValue = paramValue.replaceAll("-", "");
			paramValue = paramValue.replaceAll("#", "");
			paramValue = paramValue.replaceAll("--", "");
			paramValue = paramValue.replaceAll("-", "");
			paramValue = paramValue.replaceAll(",", "");

			if (gubun != "encodeData") {
				paramValue = paramValue.replaceAll("\\+", "");
				paramValue = paramValue.replaceAll("/", "");
				paramValue = paramValue.replaceAll("=", "");
			}

			result = paramValue;

		}
		return result;
	}

	public static String redirectAdmin(Map<String, Object> mapSession) {
		String returnValue = "/mgmt/admin/modify.do?IDX=" + mapSession.get("ADMIN_ID").toString();
		if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), "1") == true) {
			returnValue = "/mgmt/admin/list.do";
		} else if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), "2") == true) {
			returnValue = "/mgmt/board/list.do?PID=2";
		} else if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), "3") == true) {
			returnValue = "/mgmt/company/list.do";
		} else if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), "4") == true) {
			returnValue = "/mgmt/board/list.do?PID=7";
		} else if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), "5") == true) {
			returnValue = "/mgmt/board/list.do?PID=10";
		}
		return returnValue;
	}

	public static boolean checkAdmin(Map<String, Object> mapSession, String menus) {
		boolean returnValue = true;
		if (!mapSession.get("GRANTS").toString().equals("Y")) {
			if (CommonTld.getMenusBool(mapSession.get("MENUS").toString(), menus) == false) {
				returnValue = false;
			}
		}
		return returnValue;
	}
}

class ListMapComparator implements Comparator<Map<String, Object>> {

	private String keyNm;

	public ListMapComparator(String keyNm) {
		this.keyNm = keyNm;
	}

	public int compare(Map<String, Object> map1, Map<String, Object> map2) {
		String value1 = String.valueOf(map1.get(keyNm));
		String value2 = String.valueOf(map2.get(keyNm));
		return value1.compareTo(value2);
	}
}
