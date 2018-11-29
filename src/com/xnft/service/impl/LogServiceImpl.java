package com.xnft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnft.dao.LogMapper;
import com.xnft.model.ZnLog;
import com.xnft.service.LogService;

@Service
@Transactional
public class LogServiceImpl implements LogService {
   
	@Autowired
	private LogMapper lmpper;
	public LogMapper getLmpper() {
		return lmpper;
	}
	public void setLmpper(LogMapper lmpper) {
		this.lmpper = lmpper;
	}
	@Override
	public void inserLog(Map<String, Object> map) {
		try {
			lmpper.insertLog(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<ZnLog> getlog(Map<String, Object> map) {
		    List<ZnLog> log = null;
	    try {
	        log = lmpper.getlog(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return log;
	}
	@Override
	public void delLog(Map<String, Object> map) {
		try {
			  lmpper.delLog(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
