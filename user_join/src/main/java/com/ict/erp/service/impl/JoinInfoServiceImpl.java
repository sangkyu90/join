package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.JoinInfoDAO;
import com.ict.erp.service.JoinInfoService;
import com.ict.erp.vo.JoinInfo;

@Service
public class JoinInfoServiceImpl implements JoinInfoService {
	
	@Autowired
	private JoinInfoDAO jidao;
	
	@Override
	public List<JoinInfo> getJoinInfoList(JoinInfo ji) {
		return jidao.getJoinInfoList(ji);
	}

	@Override
	public JoinInfo getJoinInfo(JoinInfo ji) {
		return jidao.getJoinInfo(ji);
	}
	
	@Override
	public int insertJoinInfo(JoinInfo ji) {
		return jidao.insertJoinInfo(ji);
	}
	
	@Override
	public int updateJoinInfo(JoinInfo ji) {
		return jidao.updateJoinInfo(ji);
	}

	@Override
	public int deleteJoinInfo(int jiNum) {
		return jidao.deleteJoinInfo(jiNum);
	}

	@Override
	public JoinInfo getLoginInfo(JoinInfo ji) {
		return jidao.getLoginInfo(ji);
	}



}
