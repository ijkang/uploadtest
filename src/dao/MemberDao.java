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

import model.Member;
import model.MemberPage;

public class MemberDao {
	private static MemberDao instance= new MemberDao();
	private static SqlSession session;
	static{
		try{
			Reader reader = 
			  Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = 
					new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		}catch(IOException e){
			System.out.println("sqlMap Error : " +e.getMessage());
		}
	}
	private MemberDao() {}
	public static MemberDao getInstance(){
		return instance;
	}
	
//	public List<Member> list(){
//		List<Member> list = null;
//		try{
//			list = session.selectList("member.list");
//		}catch (Exception e) {
//			System.out.println("list Error:"+e.getMessage()+"�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝占�");
//		}
//		return list;
//	}
	public int count(){
		
		int result=0;
		try{
			result= (int) session.selectOne("member.count");
			
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
		
	}
	
	public List<Member> selectMemberList(int startRow, int endRow) {
		
		  MemberPage bp = new MemberPage();
		  bp.setStartRow(startRow);
		  bp.setEndRow(endRow);
		  List<Member> list = null;

		try{
			list = session.selectList("member.selectMemberList",bp);
		}catch (Exception e) {
			
			System.out.println("list Error:"+e.getMessage()+"END");
			
		}
		return list;
	}
	public List<Member> memberView(String mnum) {
			List<Member> list = null;
		try{
			list = session.selectList("member.memberView",mnum);
			
		}catch (Exception e) {
			
			System.out.println("list Error:"+e.getMessage()+"END");
			
		}
		return list;
	}
	public int deleteMember(int mnum) {
		int result=0;
		System.out.println("3");	
		try{
			result = session.delete("member.deleteMember",mnum);
			
		}catch (Exception e) {
			
			System.out.println("list Error:"+e.getMessage()+"END");
		}
		return result;
	}
	
	public int nicChange(String nic) {
		
			int result = 0;
		try{
			result = session.update("member.nicChange",nic);
			
		}catch (Exception e) {
			
			System.out.println("list Error:"+e.getMessage()+"END");
		}
		return result;
	}
	public int memberCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public String selectPass(String id) {
		String result = "";

		try {
			result += (String) session.selectOne("member.selectPass", id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	
	public int confirmId(String id) {
		int result = 0;		
		try { Member member=
				(Member) session.selectOne("member.confirm", id);
			if (member.getId()!=null && member.getId().equals(id)) {
				result = 1;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return result;
	}
	
	
	public int selectMnum(String id) {
		int result = 0;
		try {
			result = (int)session.selectOne("member.selectMnum", id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	public int insert(Member member) {
		int result = 0;
		try { result = session.insert("member.insert", member);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	public int update(Member member) {
		int result = 0;
		try { 
	
			System.out.println("email="+member.getEmail());
			System.out.println("addr="+member.getAddr());
			System.out.println("name="+member.getName());
			System.out.println("Pnum="+member.getPnum());
			System.out.println("Gender="+member.getGender());
			System.out.println("Pass="+member.getPass());
			System.out.println("Nic="+member.getNic());
			
			result = session.update("member.update", member);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
	public Member select(String id) {
		Member mm = new Member();
		try { mm = 
			(Member)session.selectOne("member.select", id);
		System.out.println("mnum="+id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mm;
	}
	public int check(Member member){
		int result =0;
	
		System.out.println("왜 시도를못하니");
		
		try { 
			
			Member mb = (Member)session.selectOne("select",member.getId());
			System.out.println("member.getID :"+member.getId());
			
			System.out.println("member.getPass :"+member.getPass());
			System.out.println("mb.getPass :"+mb.getPass());
			
			if (mb.getPass().equals(member.getPass())) {
					result = 1;
				}else result = 0;
			
		} catch (Exception e) {
			System.out.println("왜 시도를못하니 2");
			result=-1;
		}
		return result;
	}
	public List select(int mnum) {
		List list = null;
		try{
		list=session.selectList("member.selectHoney", mnum);
		}catch(Exception e){
			System.out.println("select error: "+e.getMessage());
		}
		return list;
	}
	public String selectNic(String id) {
		String result = "";

		try {
			result += (String) session.selectOne("member.selectNic", id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
}
