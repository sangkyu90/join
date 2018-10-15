package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;

@Alias("ji")
public class JoinInfo {
	private Integer jiNum;
	private String jiId;
	private String jiPwd;
	private String jiLocal;
	private String jiName;
	private String jiEmail;
	private String jiGender;
	
	private String jiBirth;
	private String jiBirth1;
	private String jiBirth2;
	private String jiBirth3;
	
	private String jiMobile;
	private String jiMobile1;
	private String jiMobile2;
	private String jiMobile3;
	
	private String jiAddress;

	//	constructor	//
	
	public JoinInfo() {}
	public JoinInfo(Integer jiNum, String jiId, String jiPwd, String jiLocal, String jiName, String jiEmail,
			String jiGender, String jiBirth, String jiBirth1, String jiBirth2, String jiBirth3, String jiMobile,
			String jiMobile1, String jiMobile2, String jiMobile3, String jiAddress) {
		super();
		this.jiNum = jiNum;
		this.jiId = jiId;
		this.jiPwd = jiPwd;
		this.jiLocal = jiLocal;
		this.jiName = jiName;
		this.jiEmail = jiEmail;
		this.jiGender = jiGender;
		this.jiBirth = jiBirth;
		this.jiBirth1 = jiBirth1;
		this.jiBirth2 = jiBirth2;
		this.jiBirth3 = jiBirth3;
		this.jiMobile = jiMobile;
		this.jiMobile1 = jiMobile1;
		this.jiMobile2 = jiMobile2;
		this.jiMobile3 = jiMobile3;
		this.jiAddress = jiAddress;
	}

	//	getters&setters//

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
	public void setJiBirth(String jiBirth1,String jiBirth2,String jiBirth3) {
		this.jiBirth = jiBirth1 + "-" + jiBirth2 + "-" + jiBirth3;
	}
	public String getJiBirth1() {
		return jiBirth1;
	}
	public void setJiBirth1(String jiBirth1) {
		this.jiBirth1 = jiBirth1;
	}
	public String getJiBirth2() {
		return jiBirth2;
	}
	public void setJiBirth2(String jiBirth2) {
		this.jiBirth2 = jiBirth2;
	}
	public String getJiBirth3() {
		return jiBirth3;
	}
	public void setJiBirth3(String jiBirth3) {
		this.jiBirth3 = jiBirth3;
	}
	public String getJiMobile() {
		return jiMobile;
	}
	public void setJiMobile(String jiMobile1,String jiMobile2,String jiMobile3) {
		this.jiMobile = jiMobile1 + "-" + jiMobile2 + "-" + jiMobile3;
	}
	public String getJiMobile1() {
		return jiMobile1;
	}
	public void setJiMobile1(String jiMobile1) {
		this.jiMobile1 = jiMobile1;
	}
	public String getJiMobile2() {
		return jiMobile2;
	}
	public void setJiMobile2(String jiMobile2) {
		this.jiMobile2 = jiMobile2;
	}
	public String getJiMobile3() {
		return jiMobile3;
	}
	public void setJiMobile3(String jiMobile3) {
		this.jiMobile3 = jiMobile3;
	}
	public String getJiAddress() {
		return jiAddress;
	}
	public void setJiAddress(String jiAddress) {
		this.jiAddress = jiAddress;
	}
	
	@Override
	public String toString() {
		return "JoinInfo [jiNum=" + jiNum + ", jiId=" + jiId + ", jiPwd=" + jiPwd + ", jiLocal=" + jiLocal + ", jiName="
				+ jiName + ", jiEmail=" + jiEmail + ", jiGender=" + jiGender + ", jiBirth=" + jiBirth + ", jiBirth1="
				+ jiBirth1 + ", jiBirth2=" + jiBirth2 + ", jiBirth3=" + jiBirth3 + ", jiMobile=" + jiMobile
				+ ", jiMobile1=" + jiMobile1 + ", jiMobile2=" + jiMobile2 + ", jiMobile3=" + jiMobile3 + ", jiAddress="
				+ jiAddress + "]";
	}
	
	
}