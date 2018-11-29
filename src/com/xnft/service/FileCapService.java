package com.xnft.service;

import java.util.List;
import java.util.Map;

import com.xnft.model.FileCap;

public interface FileCapService {
	//添加档案柜信息
   public void insertFileCap(Map<String, Object> map);
   //查询档案柜信息
   public List<FileCap> getFileCap(Map<String, Object> map);
   //查询档案柜详情
   public FileCap getFileCapById(Map<String, Object> map);
   //删除
   public void delFileCap(Map<String, Object> map);
   //修改
   public void updateFile(Map<String, Object> map);
   //档案柜停用
   public void updateFileState(Map<String, Object> map);
}
