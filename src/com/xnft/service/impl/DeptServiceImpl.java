package com.xnft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnft.dao.DeptMapper;
import com.xnft.model.Dept;
import com.xnft.service.DeptService;

@Service
@Transactional
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptService;
	public DeptMapper getDeptService() {
		return deptService;
	}

	public void setDeptService(DeptMapper deptService) {
		this.deptService = deptService;
	}

	@Override
	public List<Dept> getDept(Map<String, Object> map) {
		List<Dept> lt = deptService.getDept(map);
		
		return lt;
	}

	@Override
	public void insertDept(Map<String, Object> map) {
		deptService.insertDept(map);

	}

	@Override
	public void delDept(Map<String, Object> map) {
		deptService.delDept(map);
  
	}

	@Override
	public void updateDept(Map<String, Object> map) {
		deptService.updateDept(map);

	}

	@Override
	public Dept getDeptById(Map<String, Object> map) {
		
		return deptService.getDeptById(map);
	}

}
