package com.xnft.model;

import java.util.Date;
/**
 * 日志
 * @author model
 *
 */
public class ZnLog {
	private Integer logId; //日志编码
    private String username; //用户名称
    private Date createtime; //使用是时间
	private String fileCap; //档案柜名称
	private String state;  //状态
	private String logname;//日志内容
	private String ip;     //
	private String type;   //日志类型
	public Integer getLogId() {
		return logId;
	}
	public void setLogId(Integer logId) {
		this.logId = logId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getFileCap() {
		return fileCap;
	}
	public void setFileCap(String fileCap) {
		this.fileCap = fileCap;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	

}
