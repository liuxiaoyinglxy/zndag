package com.xnft.model;

import java.util.Date;

/**
 * 档案信息
 * @author model
 *
 */
public class Record {
	private Integer id;
	private String recordId; //档案编码
	private String recordNm; //档案名称
	private String compary;  //单位名称
	private String lever;    //部职别
	private String rankLevel;//职位级别
	private String idNum;   //身份证号
	private String fileCap; //档案柜
	private Integer layerNum; //层数
	private Integer positionNum;//位置号
	private Integer recoStatus; //档案状态
	private Integer archiviStatus;//归档状态
	private Date createTime;//录入时间
	private String nt;//备注
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRecordId() {
		return recordId;
	}
	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}
	public String getRecordNm() {
		return recordNm;
	}
	public void setRecordNm(String recordNm) {
		this.recordNm = recordNm;
	}
	public String getCompary() {
		return compary;
	}
	public void setCompary(String compary) {
		this.compary = compary;
	}
	public String getLever() {
		return lever;
	}
	public void setLever(String lever) {
		this.lever = lever;
	}
	public String getRankLevel() {
		return rankLevel;
	}
	public void setRankLevel(String rankLevel) {
		this.rankLevel = rankLevel;
	}
	public String getIdNum() {
		return idNum;
	}
	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}
	public String getFileCap() {
		return fileCap;
	}
	public void setFileCap(String fileCap) {
		this.fileCap = fileCap;
	}
	public Integer getLayerNum() {
		return layerNum;
	}
	public void setLayerNum(Integer layerNum) {
		this.layerNum = layerNum;
	}
	public Integer getPositionNum() {
		return positionNum;
	}
	public void setPositionNum(Integer positionNum) {
		this.positionNum = positionNum;
	}
	public Integer getRecoStatus() {
		return recoStatus;
	}
	public void setRecoStatus(Integer recoStatus) {
		this.recoStatus = recoStatus;
	}
	public Integer getArchiviStatus() {
		return archiviStatus;
	}
	public void setArchiviStatus(Integer archiviStatus) {
		this.archiviStatus = archiviStatus;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getNt() {
		return nt;
	}
	public void setNt(String nt) {
		this.nt = nt;
	}
	
	

}
