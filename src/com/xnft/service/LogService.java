package com.xnft.service;

import java.util.List;
import java.util.Map;

import com.xnft.model.ZnLog;

public interface LogService {
	/**
	 * 添加日志
	 * @param map
	 */
	public void inserLog(Map<String, Object> map);
	/**
	 * 查询日志信息
	 * @param map
	 * @return
	 */
	public List<ZnLog> getlog(Map<String, Object> map);
	
	//删除日志记录
	public void delLog(Map<String, Object> map);

}
