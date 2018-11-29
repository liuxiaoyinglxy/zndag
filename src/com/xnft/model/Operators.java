package com.xnft.model;
/***
 * 操作员管理
 * @author model
 *
 */
public class Operators {
	private String operId; //操作员编码
	private String operPhone; //操作员编码
	private String realName;  //真实姓名
	private String password;
	private String  createTime; //添加时间
	private Integer status;  //状态
	private String nt;
	private String del;  //是否删除  0 未删 1 删除
	public String getOperId() {
		return operId;
	}
	public void setOperId(String operId) {
		this.operId = operId;
	}
	public String getOperPhone() {
		return operPhone;
	}
	public void setOperPhone(String operPhone) {
		this.operPhone = operPhone;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getNt() {
		return nt;
	}
	public void setNt(String nt) {
		this.nt = nt;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	} 
    

}
