package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}