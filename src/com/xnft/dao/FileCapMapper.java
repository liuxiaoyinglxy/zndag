package com.xnft.dao;

import java.util.List;
import java.util.Map;

import com.xnft.model.FileCap;
/**
 * 档案柜
 * @author model
 *
 */
public interface FileCapMapper {
	//档案柜查询数据
	public List<FileCap> selectFileCapList(Map<String, Object> map);
	//添加档案柜信息
	public void insertFileCap(Map<String, Object> map);
	//查询档案柜详情
	public FileCap selectFileCapById(Map<String, Object> map);
	//删除档案柜信息
	public void delFileCap(Map<String, Object> map);
	//编辑
	public void updateFile(Map<String, Object> map);
	//停用
	public void updateFileState(Map<String, Object> map);
   
}
