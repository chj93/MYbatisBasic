package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sun.javafx.collections.MappingChange.Map;

import sist.com.model.BbsBean;
import sist.com.model.MemberBean;
import sist.com.model.zipBean;

public class MemberDao {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public static boolean memberIdCheck(String id) {
		SqlSession sqlsession=null;
		String rsId=null;
		try {
			sqlsession=sqlSessionFactory.openSession();
			rsId=sqlsession.selectOne("memberIdCheck", id);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlsession!=null)sqlsession.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return rsId==null||rsId.equals("")?false:true;
	}//memberIdCheck
	
	public static List<zipBean> selectZip(String dong) {
		SqlSession sqlsession=null;
		try {
			sqlsession=sqlSessionFactory.openSession();
			return sqlsession.selectList("selectZip",dong);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return null;
	}
	
	public static void insertJoin(MemberBean bean) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertJoin", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	public static List<MemberBean>selectMember(){
		SqlSession sqlsession=null;
		try {
			sqlsession=sqlSessionFactory.openSession();
			return sqlsession.selectList("selectMember");
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return null;
	}
}







