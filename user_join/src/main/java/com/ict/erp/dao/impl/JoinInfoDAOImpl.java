package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.JoinInfoDAO;
import com.ict.erp.vo.JoinInfo;
import com.ict.erp.vo.JoinInfo2;

@Repository
public class JoinInfoDAOImpl implements JoinInfoDAO {
	
	@Autowired
	private SqlSession ss;
	
	@Override
	public List<JoinInfo> getJoinInfoList(JoinInfo ji) {
		return ss.selectList("SQL.JOININFO.selectJoinInfoList",ji);
	}
	
	@Override
	public JoinInfo getJoinInfo(JoinInfo ji) {
		return ss.selectOne("SQL.JOININFO.selectJoinInfo",ji);
	}

	@Override
	public int insertJoinInfo(JoinInfo ji) {
		return ss.insert("SQL.JOININFO.insertJoinInfo", ji);
	}	
	
	@Override
	public int updateJoinInfo(JoinInfo2 ji) {
		return ss.update("SQL.JOININFO.updateJoinInfo",ji);
	}

	@Override
	public int deleteJoinInfo(int jiNum) {
		return ss.delete("SQL.JOININFO.deleteJoinInfo",jiNum);
	}

	@Override
	public JoinInfo getLoginInfo(JoinInfo ji) {
		return ss.selectOne("SQL.JOININFO.login", ji);
	}

}
