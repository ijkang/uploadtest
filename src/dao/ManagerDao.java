package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import model.Manager;
import model.Member;
import model.MemberPage;
import model.MgrPage;

public class ManagerDao {
	private static ManagerDao instance = new ManagerDao();
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		} catch (IOException e) {
			System.out.println("sqlMap Error : " + e.getMessage());
		}
	}

	private ManagerDao() {
	}

	public static ManagerDao getInstance() {
		return instance;
	}

	// public List<Member> list(){
	// List<Member> list = null;
	// try{
	// list = session.selectList("member.list");
	// }catch (Exception e) {
	// System.out.println("list Error:"+e.getMessage()+"�������");
	// }
	// return list;
	// }

	public int insert(Member member) {
		int result = 0;
		try {
			result = session.insert("member.insert", member);
		} catch (Exception e) {
			System.out.println("insert ERROR:" + e.getMessage() + "END");
		}
		return result;
	}

	public int count() {

		int result = 0;
		try {
			result = (int) session.selectOne("manager.count");

		} catch (Exception e) {
			System.out.println("INSERT ERROR: " + e.getMessage());
		}
		return result;

	}

	public List<Member> selectMemberList(int startRow, int endRow) {
		System.out.println("5");

		MemberPage bp = new MemberPage();
		bp.setStartRow(startRow);
		bp.setEndRow(endRow);
		List<Member> list = null;

		try {
			list = session.selectList("member.selectMemberList", bp);
		} catch (Exception e) {

			System.out.println("list Error:" + e.getMessage() + " END");

		}
		return list;
	}

	public int confirmId(String masterId) {
		int result = 0;

		try {
			result = (int) session.selectOne("manager.confirmId", masterId);

		} catch (Exception e) {

			System.out.println("ID Read ERROR :" + e.getMessage());
		}
		return result;
	}

	public int insertMgr(Manager mgr) {
		int result = 0;
		try {
			result = session.insert("manager.insertMgr", mgr);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;

	}

	public String selectPass(String id) {
		String result = "";

		try {
			result += (String) session.selectOne("manager.selectPass", id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public List<Manager> selectMgrList(int startRow,int endRow) {
		
		  MgrPage bp = new MgrPage();
		  bp.setStartRow(startRow);
		  bp.setEndRow(endRow);
		  List<Manager> list = null;
		  try{
			  list= session.selectList("manager.selectMgrList",bp); 
		  }catch(Exception e){
			  System.out.println(e.getMessage());
		  }
		return list;
	}
}
