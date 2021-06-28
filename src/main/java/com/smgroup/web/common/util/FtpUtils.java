package com.smgroup.web.common.util;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpException;
import com.jcraft.jsch.SftpProgressMonitor;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("ftpUtils")
public class FtpUtils {

	private static Session session = null;
	private static Channel channel = null;
	private static ChannelSftp channelSftp = null;

	@Value("#{sysinfo['ftp.servers']}")
	private String ftpservers;

	Logger log = LoggerFactory.getLogger(this.getClass());

	public void sendFileToOtherServer(String sourcePath, String destinationPath, String fileName) throws Exception {
		if (!CommonUtils.nullCheck(ftpservers).equals("")) {
			JSONParser p = new JSONParser();
			JSONObject obj = (JSONObject) p.parse(ftpservers);

			if (obj != null && !obj.toString().equals("{}")) {
				for (Object key : obj.keySet()) {
					// based on you key types
					String keyStr = (String) key;
					Object keyvalue = obj.get(keyStr);
					// Print key and value
					// log.info("key: "+ keyStr + " value: " + keyvalue);

					JSONObject ftps = (JSONObject) p.parse(keyvalue.toString());

					JSch jsch = new JSch();
					session = jsch.getSession(ftps.get("username").toString(), ftps.get("host").toString(),
							Integer.parseInt(ftps.get("port").toString())); // 세션 오픈!
					session.setPassword(ftps.get("password").toString());
					java.util.Properties config = new java.util.Properties();
					config.put("StrictHostKeyChecking", "no");
					session.setConfig(config);
					session.connect();
					channel = session.openChannel("sftp");
					channel.connect();
					channelSftp = (ChannelSftp) channel;
					destinationPath = ftps.get("serverpath").toString()+ "/" + destinationPath;
					destinationPath = mkdirDir(destinationPath);
					channelSftp.put(sourcePath + "/" + fileName, destinationPath + "/" + fileName, new SftpProgressMonitor() {
						private long max = 0; // 최대
						private long count = 0; // 계산을 위해 담아두는 변수
						private long percent = 0; // 퍼센트

						@Override
						public void init(int op, String src, String dest, long max) { // 설정
							this.max = max;
						}

						@Override
						public void end() {
							// 종료시 할 행동
						}

						@Override
						public boolean count(long bytes) {
							this.count += bytes; // 전송한 바이트를 더한다.
							long percentNow = this.count * 100 / max; // 현재값에서 최대값을 뺀후
							if (percentNow > this.percent) { // 퍼센트보다 크면
								this.percent = percentNow;
								log.info("progress : " + this.percent); // Progress
							}
							return true;// 기본값은 false이며 false인 경우 count메소드를 호출하지 않는다.
						}
					});
					channelSftp.disconnect();
					channel.disconnect();
				}
			}
		}
	}

	/**
	 * create by Junho 헤당 경로가 없으면 mkdir 하는 함수 리턴값 : fullpath
	 * 
	 * @param path
	 * @return
	 * @throws SftpException
	 */

	public String mkdirDir(String path) throws SftpException {
		String[] pathArray = path.split("/");
		String currentDirectory = "";// channelSftp.pwd();

		String totPathArray = "";
		for (int i = 0; i < pathArray.length; i++) {
			totPathArray += pathArray[i] + "/";
			String currentPath = currentDirectory + "/" + totPathArray;
			currentPath = currentPath.replace("//", "/");
			log.info(currentPath);
			try {
				channelSftp.mkdir(currentPath);
				channelSftp.cd(currentPath);
			} catch (Exception e) {
				channelSftp.cd(currentPath);
			}
		}
		String retFolder = currentDirectory + "/" + totPathArray + "/";
		retFolder = retFolder.replace("//", "/");
		return retFolder;
	}

}
