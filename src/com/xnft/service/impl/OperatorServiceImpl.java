package com.xnft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnft.dao.OperatorMapper;
import com.xnft.model.Operators;
import com.xnft.service.OperatorService;
@Service
@Transactional
public class OperatorServiceImpl implements OperatorService {
    @Autowired
    private OperatorMapper operatorMapper;
    
	
	public OperatorMapper getOperatorMapper() {
		return operatorMapper;
	}


	public void setOperatorMapper(OperatorMapper operatorMapper) {
		this.operatorMapper = operatorMapper;
	}


	@Override
	public int addOperator(Map<String, Object> map) {
		return operatorMapper.insertOper(map);
	}


	@Override
	public List<Operators> getlist(Map<String, Object> map) {

		return operatorMapper.getlist(map);
	}


	@Override
	public int delOper(Map<String, Object> map) {
	  
		return operatorMapper.delOper(map);
	}


	@Override
	public int updateOper(Map<String, Object> map) {
		
		return operatorMapper.updateOper(map);
	}


	@Override
	public Operators getOperById(Map<String, Object> map) {
		
		return operatorMapper.getListById(map);
	}


	@Override
	public int resetOper(Map<String, Object> map) {
		
		return operatorMapper.resetPwd(map);
	}

}
