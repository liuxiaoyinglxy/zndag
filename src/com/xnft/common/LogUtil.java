package com.xnft.common;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.xnft.model.Users;
import com.xnft.service.LogService;

public class LogUtil {
	
	@Autowired
	private LogService logService;

	public LogService getLogService() {
		return logService;
	}

	public void setLogService(LogService logService) {
		this.logService = logService;
	}
	 public  void addLog(String username,String fileCap,String state,String logname,String type) {
		   Map<String, Object> m = new HashMap<String, Object>();
		   HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		   Users us = (Users)request.getSession().getAttribute("user");
		   m.put("logId",UUID.randomUUID().toString().replaceAll("-", ""));
		   m.put("username","admin");
		   m.put("ip", request.getRemoteAddr());
		   m.put("logname",logname);
		   m.put("type", type);
		   m.put("state", state);
		   logService.inserLog(m);
	   }

}
