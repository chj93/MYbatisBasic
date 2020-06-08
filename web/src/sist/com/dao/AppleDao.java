package sist.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.com.model.BbsBean;
import sist.com.model.EmpBean;
import sist.com.model.StudentBean;

public class AppleDao {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public static List<EmpBean> selectEmpCon() {
		return sqlSessionFactory.openSession().selectList("sist.com.bean.scott.selectEmp2");
	}

	public static List<HashMap<String, Object>> selectStudent() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectStudent");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return null;
	}

	public static List<EmpBean> selectEmp() {
		// System.out.println(sqlSessionFactory.openSession());
		/*
		 * String sql="SELECT EMPNO EP FROM EMP"; Connection con=null; PreparedStatement
		 * pstmt=null; ResultSet rs=null; ArrayList<EmpBean>list=new
		 * ArrayList<EmpBean>();
		 * 
		 * try { pstmt=con.prepareStatement(sql); rs=pstmt.executeQuery();
		 * while(rs.next()) { EmpBean bean=new EmpBean();
		 * bean.setEmpno(rs.getInt("empno")); bean.setEname(rs.getString("ename"));
		 * bean.setEmpno(rs.getInt("empno")); bean.setEname(rs.getString("ename"));
		 * bean.setEmpno(rs.getInt("empno")); bean.setEname(rs.getString("ename"));
		 * list.add(bean); }
		 * 
		 * } catch (Exception e) { // TODO: handle exception }
		 * 
		 */
		
		try {
			return sqlSessionFactory.openSession().selectList("sist.com.bean.apple.selectEmp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				sqlSessionFactory.openSession().close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return null;
	}

	public static List<BbsBean> selectBbs(HashMap<String, Object>map) {
		return sqlSessionFactory.openSession().selectList("selectBbs",map);
	}

	public static void updateHit(int no) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.update("updateHit", no);
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

	public static Object bbsInfo(int no) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("bbsInfo", no);
			
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
		return null;
	}

	public static void insertBBS(BbsBean bean) {
		SqlSession sqlSession = null;
		try {

			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertBBS", bean);
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
	
	public static Integer getTotalRow(HashMap<String, Object>map) {
		return sqlSessionFactory.openSession().selectOne("getTotalRow",map);
		
	}
	
	public static boolean inCheckProcess(String id, String password) {
		SqlSession sqlSession = null;
		//session == 허락된 시간.
		try {
			sqlSession=sqlSessionFactory.openSession();
			String dbPass=sqlSession.selectOne("inCheckProcess",id);
			System.out.println("dbpass="+dbPass);
			return dbPass!=null && dbPass.equals(password.trim());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return false;
	}
	
	public static String getPassword(int no) {
		SqlSession sqlSession = null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectOne("getPassword",no);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
		return null;
	}
	
	//추가
	public static void deleteBBS(int no) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.delete("deleteBBS", no);
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
	
	public static void updateBBS(BbsBean bean) {
		SqlSession sqlSession = null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			sqlSession.update("updateBBS",bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				sqlSession.close();
				sqlSession.rollback();
			} catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
	}
	//시퀀스 생성
	public static Integer getSequence() {
		SqlSession sqlSession = null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectOne("getSequence");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return null;
	}

	public static void updateReply(HashMap<String, Object>map){
	//num,job
		SqlSession sqlSession = null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			sqlSession.update("updateReply",map);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	public static void updateStep(HashMap<String, Object>map) {
		SqlSession sqlSession = null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			sqlSession.update("updateStep",map);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}

	

}
