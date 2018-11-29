package com.xnft.dao;

import java.util.List;
import java.util.Map;

import com.xnft.model.ZnLog;

public interface LogMapper {
	//添加日志
	public int insertLog(Map<String, Object> map);
	//查询日志信息
    public List<ZnLog> getlog(Map<String, Object> map); 
    //日志删除
    public void delLog(Map<String, Object> map);
	
   
}
