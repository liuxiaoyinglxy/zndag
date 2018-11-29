package com.xnft.service;

import java.util.List;
import java.util.Map;

import com.xnft.model.Dept;

public interface DeptService {
	//查询部门
	public List<Dept> getDept(Map<String, Object> map);
    //添加
	public void insertDept(Map<String, Object> map);
	//删除
	public void delDept(Map<String, Object> map);
	//修改
	public void updateDept(Map<String, Object> map);
	//查看详情
	public Dept getDeptById(Map<String, Object> map);
}
