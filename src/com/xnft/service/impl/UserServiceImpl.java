package com.xnft.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.xnft.dao.LogMapper;
import com.xnft.dao.UserMapper;
import com.xnft.model.Users;
import com.xnft.service.LogService;
import com.xnft.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
    private UserMapper uMapper;
	public UserMapper getuMapper() {
		return uMapper;
	}
	public void setuMapper(UserMapper uMapper) {
		this.uMapper = uMapper;
	}
	@Autowired
	private LogMapper logmapper;
	
	public LogMapper getLogmapper() {
		return logmapper;
	}
	public void setLogmapper(LogMapper logmapper) {
		this.logmapper = logmapper;
	}
	@Override
	public Map<String, Object> getlogin(Map<String, Object> map) {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		Map<String, Object> mp = new HashMap<String, Object>();
		try {
			Users usr = uMapper.getRegist(map);
			logmapper.insertLog(map);
			if(usr != null){
				session.setAttribute("user", usr);
				mp.put("code", 0);
				mp.put("data", usr);
				mp.put("message", "登陆成功");
			}else {
				mp.put("code", 1);
				mp.put("message", "用户名或密码错误");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mp.put("message", "出现异常");
		}
		return mp;
	}

}
