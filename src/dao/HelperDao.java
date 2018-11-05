package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import model.Helper;
import model.Honey;
import model.MemberPage;

public class HelperDao {
	private static HelperDao instance = new HelperDao();
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
	private HelperDao() {}
	public static HelperDao getInstance(){
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

	public int insert(Helper hp) {
		int result = 0;
		try{
			
			result = session.insert("helper.insert",hp);
			
		}catch(Exception e){
			System.out.println("helpInsertError: "+e.getMessage());
		}
		
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
			System.out.println("select Error = "+e.getMessage());
		}
		return hn;
	}
	public int delete(int mnum) {
		int result = 0;
		
		try{
			result= session.delete("honey.delete",mnum);
			
		}catch(Exception e){
			System.out.println("delete error = "+e.getMessage());
		}
		
		return result;
	}
	public void updateHit(int mnum) {
		
		session.update("honey.updateHit",mnum);
		 
	}
	public int goodHit(int mnum) {
		int result =0;
		
		result = session.update("honey.goodHit",mnum);
		
		return result;
	}
	public int insert2(Honey hn) {
		int result = 0;
		
		result = session.insert("honey.insert2",hn);
		
	
	return result;
	}
	@SuppressWarnings("unchecked")
	public List<Helper> selectHelperToList(int startRow, int endRow, int mnum) {

		MemberPage bp = new MemberPage();
	
		bp.setStartRow(startRow);
		bp.setEndRow(endRow);
		bp.setIntCond(mnum); 
		
		List<Helper> list = null;

		try {
			list = session.selectList("helper.selectHelperToList", bp);
		} catch (Exception e) {

			System.out.println("list Error:" + e.getMessage() + " END");
		}
		return list;
	}
	public int helpTocount(int mnum) {
		int result = 0;
		
		try{
			result = (int)session.selectOne("helper.helpTocount",mnum);
			
		}catch(Exception e){
			System.out.println("count error: "+e.getMessage());
		}
		
		return result;
	}
	@SuppressWarnings("unchecked")
	public List<Helper> selectHelperFromList(int startRow, int endRow, int mnum) {

		MemberPage bp = new MemberPage();
		bp.setStartRow(startRow);
		bp.setEndRow(endRow);
		bp.setIntCond(mnum); 
		List<Helper> list = null;

		try {
			list = session.selectList("helper.selectHelperFromList", bp);
		} catch (Exception e) {

			System.out.println("list Error:" + e.getMessage() + " END");
		}
		return list;
		
	}
	public int helpFromcount(int mnum) {
		int result = 0;
		try{
			result = (int)session.selectOne("helper.helpFromcount",mnum);
		}catch(Exception e){
			System.out.println("count error: "+e.getMessage());
		}
		return result;
	}
	public int HelpRead(int wnum) {
		int result = 0 ;
		try{
			result = session.update("helper.helpReadCheck",wnum);
		}catch(Exception e){
			System.out.println("count error: "+e.getMessage());
		}
		return result;
	}
	


}
