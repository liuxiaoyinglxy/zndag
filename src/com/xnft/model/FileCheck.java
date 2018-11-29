package com.xnft.model;

import java.util.Date;

/***
 * 档案盘点
 * @author model
 *
 */
public class FileCheck {
	private String id;         //
	private String checkTime;  //盘点时间
	private Integer fileErNum;  //异常档案数量
	private Integer ckeckStatus;//盘点状态
	private Date createTime;    //创建时间
    private String nt;         //备注
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(String checkTime) {
		this.checkTime = checkTime;
	}
	public Integer getFileErNum() {
		return fileErNum;
	}
	public void setFileErNum(Integer fileErNum) {
		this.fileErNum = fileErNum;
	}
	public Integer getCkeckStatus() {
		return ckeckStatus;
	}
	public void setCkeckStatus(Integer ckeckStatus) {
		this.ckeckStatus = ckeckStatus;
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
