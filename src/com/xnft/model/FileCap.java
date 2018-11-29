package com.xnft.model;

import java.util.Date;

/***
 * 档案柜信息
 * @author model
 *
 */
public class FileCap {
	private String  id;// 档案柜编码
	private String  fcabNm;//档案柜名称
	private String  proId; //产品编号
	private String  shapSize;//外形尺寸
	private Integer drawNum; //抽屉层数
	private String ip;  //地址
	private String port; //端口号
	private Integer state;//状态
	private Date createTime; //创建时间
	private String nt;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFcabNm() {
		return fcabNm;
	}
	public void setFcabNm(String fcabNm) {
		this.fcabNm = fcabNm;
	}
	public String getProId() {
		return proId;
	}
	public void setProId(String proId) {
		this.proId = proId;
	}
	public String getShapSize() {
		return shapSize;
	}
	public void setShapSize(String shapSize) {
		this.shapSize = shapSize;
	}
	public Integer getDrawNum() {
		return drawNum;
	}
	public void setDrawNum(Integer drawNum) {
		this.drawNum = drawNum;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
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
