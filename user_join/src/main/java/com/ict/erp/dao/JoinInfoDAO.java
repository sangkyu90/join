package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.JoinInfo;
import com.ict.erp.vo.JoinInfo2;

public interface JoinInfoDAO {
	
	public List<JoinInfo> getJoinInfoList(JoinInfo ji);
	public JoinInfo getJoinInfo(JoinInfo ji);
	public int insertJoinInfo(JoinInfo ji);
	public int updateJoinInfo(JoinInfo2 ji);
	public int deleteJoinInfo(int jiNum);
	
//	sign up&in
	public JoinInfo getLoginInfo(JoinInfo ji);
}
