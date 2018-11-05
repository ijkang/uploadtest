package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.ibatis.common.resources.Resources;

import model.Condition;
import model.Diary;

public class DiaryDao {
	private static DiaryDao instance = new DiaryDao();
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
	private DiaryDao() {}
	public static DiaryDao getInstance(){
		return instance;
	}
	public int memoInsert(Diary diary) {
		int result=0;
		try{ 
			result = session.insert("diary.memoInsert",diary);
			
		}catch (Exception e) {
			System.out.println("insert 실패"+e.getMessage());
		}
		return result;
	} 
	public List<Diary> memoSelect(String memoDate, int mnum) {
		List<Diary> list = null; 
		Condition cd = new Condition(); 
		cd.setMemoDate(memoDate);   
		cd.setMnum(mnum);
		try{
			list =  session.selectList("diary.memoCheck",cd);
		}catch (Exception e) {
			System.out.println("Check Error: "+e.getMessage());
		}
		return list;
	}
	public List<Diary> memoView(int mnum, String memoDate) {
		List<Diary> list = null;
		Condition cd = new Condition();
		cd.setMemoDate(memoDate);
		cd.setMnum(mnum);
		try {
			list = session.selectList("diary.memoView",cd);
		} catch (Exception e) {
			System.out.println("view error :" +e.getMessage());
		}
		return list;
	}
	public List<Diary> ddayMemo(int mnum) {
		List<Diary> list = null;
		Condition cd =new Condition();
		cd.setMnum(mnum);
		try { 
			list = session.selectList("diary.ddayMemo",cd);
		} catch (Exception e) {
			System.out.println("view error :" +e.getMessage());
		}
		return list;
	} 
	public int deleteMemo(int wnum) {
		int result=0 ;
		Condition cd =new Condition();
		cd.setMnum(wnum); 
		try{ 
			result =session.delete("diary.memoDelete",cd);
		}catch (Exception e) {
			System.out.println("delete Error : "+e.getMessage());
		}
		
		
		return result ;
	}
}
