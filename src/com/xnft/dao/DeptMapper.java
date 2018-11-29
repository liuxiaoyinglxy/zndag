package com.xnft.dao;

import java.util.List;
import java.util.Map;

import com.xnft.model.Dept;

public interface DeptMapper {
	//查询部门
	public List<Dept> getDept(Map<String, Object> map);
	//添加部门
	public void insertDept(Map<String, Object> map);
	//删除部门
	public void delDept(Map<String, Object> map);
	//修改
	public void updateDept(Map<String, Object> map);
	//查看
	public Dept getDeptById(Map<String, Object> map);

}
