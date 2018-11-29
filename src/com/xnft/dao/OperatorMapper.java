package com.xnft.dao;

import java.util.List;
import java.util.Map;

import com.xnft.model.Operators;

public interface OperatorMapper {
	//添加操作员信息
	public int insertOper(Map<String, Object> map);
	//查询
	public List<Operators> getlist(Map<String, Object> map);
	//删除
	public int delOper(Map<String, Object> map);
	//编辑
	public int updateOper(Map<String, Object> map);
	//查看
	public Operators getListById(Map<String, Object> map);
	//重置密码
	public int resetPwd(Map<String, Object> map);

}
