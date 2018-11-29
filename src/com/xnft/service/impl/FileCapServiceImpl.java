package com.xnft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnft.dao.FileCapMapper;
import com.xnft.model.FileCap;
import com.xnft.service.FileCapService;
@Service
@Transactional
public class FileCapServiceImpl implements FileCapService{
    @Autowired
    private FileCapMapper fileCapMapper;
    
	public FileCapMapper getFileCapMapper() {
		return fileCapMapper;
	}

	public void setFileCapMapper(FileCapMapper fileCapMapper) {
		this.fileCapMapper = fileCapMapper;
	}

	@Override
	public void insertFileCap(Map<String, Object> map) {
		fileCapMapper.insertFileCap(map);
	}

	@Override
	public List<FileCap> getFileCap(Map<String, Object> map) {
		List<FileCap> lt = null;
		try {
			lt = fileCapMapper.selectFileCapList(map);
		} catch (Exception e) {
		   e.printStackTrace();
		}
	
		return lt;
	}
	@Override
	public FileCap getFileCapById(Map<String, Object> map) {
		FileCap fc = fileCapMapper.selectFileCapById(map);
		return fc;
	}

	@Override
	public void delFileCap(Map<String, Object> map) {
		fileCapMapper.delFileCap(map);
		
	}

	@Override
	public void updateFile(Map<String, Object> map) {
		fileCapMapper.updateFile(map);
		
	}

	@Override
	public void updateFileState(Map<String, Object> map) {
		fileCapMapper.updateFileState(map);
		
	}

}
