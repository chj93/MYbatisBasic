package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.com.model.AjaxcrudBean;

public class AjaxResultDao {
	private static SqlSessionFactory sqlSessionFactory;
	static {
	sqlSessionFactory =SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public static void insertAjax(AjaxcrudBean bean) {
		SqlSession sqlSession = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			sqlSession.insert("insertAjax",bean);
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	}
	
	public static List<AjaxcrudBean> selectAjax(){
		SqlSession sqlSession = null;
		try {
			sqlSession= sqlSessionFactory.openSession();
			return sqlSession.selectList("selectAjax");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return null;
	}
}
