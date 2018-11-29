package com.xnft.service;

import java.util.List;
import java.util.Map;

import com.xnft.model.Operators;

public interface OperatorService {
	//添加操作员信息
	public int addOperator(Map<String, Object> map);
	//查询
	public List<Operators> getlist(Map<String, Object> map);
    //删除
	public int delOper(Map<String, Object> map);
	//修改
	public int updateOper(Map<String, Object> map);
	//查看
	public Operators getOperById(Map<String, Object> map);
	//重置密码
	public int resetOper(Map<String, Object> map);
}
