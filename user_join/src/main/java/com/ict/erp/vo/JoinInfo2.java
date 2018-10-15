package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;

@Alias("ji2")
public class JoinInfo2 {
	private Integer jiNum;
	private String jiId;
	private String jiPwd;
	private String jiLocal;
	private String jiName;
	private String jiEmail;
	private String jiGender;
	private String jiBirth;	
	private String jiMobile;
	private String jiAddress;
	
	//	constructor	//
	public JoinInfo2() {}
	public JoinInfo2(Integer jiNum, String jiId, String jiPwd, String jiLocal, String jiName, String jiEmail,
			String jiGender, String jiBirth, String jiMobile, String jiAddress) {
		super();
		this.jiNum = jiNum;
		this.jiId = jiId;
		this.jiPwd = jiPwd;
		this.jiLocal = jiLocal;
		this.jiName = jiName;
		this.jiEmail = jiEmail;
		this.jiGender = jiGender;
		this.jiBirth = jiBirth;
		this.jiMobile = jiMobile;
		this.jiAddress = jiAddress;
	}
	
	public Integer getJiNum() {
		return jiNum;
	}
	public void setJiNum(Integer jiNum) {
		this.jiNum = jiNum;
	}
	public String getJiId() {
		return jiId;
	}
	public void setJiId(String jiId) {
		this.jiId = jiId;
	}
	public String getJiPwd() {
		return jiPwd;
	}
	public void setJiPwd(String jiPwd) {
		this.jiPwd = jiPwd;
	}
	public String getJiLocal() {
		return jiLocal;
	}
	public void setJiLocal(String jiLocal) {
		this.jiLocal = jiLocal;
	}
	public String getJiName() {
		return jiName;
	}
	public void setJiName(String jiName) {
		this.jiName = jiName;
	}
	public String getJiEmail() {
		return jiEmail;
	}
	public void setJiEmail(String jiEmail) {
		this.jiEmail = jiEmail;
	}
	public String getJiGender() {
		return jiGender;
	}
	public void setJiGender(String jiGender) {
		this.jiGender = jiGender;
	}
	public String getJiBirth() {
		return jiBirth;
	}
	public void setJiBirth(String jiBirth) {
		this.jiBirth = jiBirth;
	}
	public String getJiMobile() {
		return jiMobile;
	}
	public void setJiMobile(String jiMobile) {
		this.jiMobile = jiMobile;
	}
	public String getJiAddress() {
		return jiAddress;
	}
	public void setJiAddress(String jiAddress) {
		this.jiAddress = jiAddress;
	}
	
	@Override
	public String toString() {
		return "JoinInfo2 [jiNum=" + jiNum + ", jiId=" + jiId + ", jiPwd=" + jiPwd + ", jiLocal=" + jiLocal
				+ ", jiName=" + jiName + ", jiEmail=" + jiEmail + ", jiGender=" + jiGender + ", jiBirth=" + jiBirth
				+ ", jiMobile=" + jiMobile + ", jiAddress=" + jiAddress + "]";
	}
	
}