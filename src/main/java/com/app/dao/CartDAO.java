package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.CartVO;

public class CartDAO {
	public SqlSession sqlSession;

	public CartDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
 
// 장바구니 추가
	public void insert(CartVO cartVO) {
		sqlSession.insert("cart.insert", cartVO);
	}

// 장바구니 전체 조회 
	public List<CartVO> selectAll() {
		return sqlSession.selectList("cart.selectAll");
	}

// 장바구니 조회
	public Optional<CartVO> select(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("cart.select", id));
	}

// 장바구니 삭제
	public void delete(Long id) {
		sqlSession.delete("cart.delete", id);
	}

}

