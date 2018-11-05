package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import model.Honey;
import model.HoneyPlus;

public class HoneyDao {
	private static HoneyDao instance = new HoneyDao();
	private static SqlSession session;
	static {
		try{
			Reader reader = 
			     Resources.getResourceAsReader("configuration.xml");
			   SqlSessionFactory ssf =
					   new SqlSessionFactoryBuilder().build(reader);
					session = ssf.openSession(true);
					reader.close();
		}catch(IOException e){
			System.out.println("sqlMap Error : "+e.getMessage());
		}
	}
	
	private HoneyDao() {}
	public static HoneyDao getInstance(){
		return instance;
	}
	
	public List<Honey> selectList(int startRow,int endRow) {
		System.out.println("startRow = "+startRow );
		System.out.println("endRow = "+endRow );
		
		HashMap<String,Integer> map = new HashMap<>();
		int start = startRow;
		int end = endRow;
		map.put("start", start);
		map.put("end", end);
		
		List<Honey> list = null;
		try{
			list = session.selectList("honey.selectList",map);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		
		return list;
	}

	public int insert(Honey honey) {
		int result = 0;
		
			result = session.insert("honey.insert",honey);
		
		return result;
	}
	public int total() {
      
		int total = 0;
		total = (int)session.selectOne("honey.selectTotal");
	
		// TODO Auto-generated method stub
		return total;
	}

	public Honey select(int mnum) {
		Honey hn = null;
		try{
		hn = (Honey)session.selectOne("honey.select",mnum);
		}catch(Exception e){
			System.out.println("select에러입니다 = "+e.getMessage());
		}
		return hn;
	}
	
	public int delete(int mnum) {
		int result = 0;
		try{
			result= session.delete("honey.delete",mnum);
			
		}catch(Exception e){
			System.out.println("delete 에러 = "+e.getMessage());
		}
		
		return result;
	}
//	public void updateHit(int wnum) {
//		
//		session.update("honey.updateHit",wnum);
//		 
//	}
	public int goodHit(int wnum) {
		int result =0;
		
		result = session.update("honey.goodHit",wnum);
		
		return result;
	}
	public int insert2(Honey hn) {
		int result = 0;
		
		result = session.insert("honey.insert2",hn);
		
	
	return result;
	}
	public Honey selectWnum(int wnum) {
			Honey hn = null;
			try{
			hn = (Honey)session.selectOne("honey.selectWnum",wnum);
			}catch(Exception e){
				System.out.println("select에러입니다 = "+e.getMessage());
			}
			return hn;
	}
	public List<Honey> selectList() {
		List<Honey> list = null;
		try{
			list = session.selectList("honey.selectBest");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return list;
	}
	
	
	public List<HoneyPlus> commentList(int wnum2) {
//		HashMap<String,Integer> map = new HashMap<>();
//		int start = startRow;
//		int end = endRow;
//		map.put("start", start);
//		map.put("end", end);
		
		List<HoneyPlus> list = null;
		try{
			list = session.selectList("honeycomment.commentList",wnum2);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}
	public int insertCmt(HoneyPlus hp) {
		int result =0;
		result = session.insert("honeycomment.insertCmt",hp);
		return result;
	}
	public void setHoneyClick(int click, int wnum) {
		HashMap<String,Integer> map = new HashMap<>();
		int count = click;
		int num = wnum;
		map.put("count", count);
		map.put("num", wnum);
		
		session.update("honey.setHoneyClick",map);
		
	}
	public void readUpdate(int wnum) {
		session.update("honey.readUpdate",wnum);
		
	}
}
