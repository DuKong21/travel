package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import Db.DBAction;

public class LocalDao {
	public Map<String, String > selectDate(String id) {
	      ResultSet rs = null;
	      Map<String, String >result = new HashMap<>();
	      Connection conn = DBAction.getInstance().getConnection();
	      PreparedStatement pstmt = null;
	      String sql;
	      try {
	    	  sql = "SELECT l.name,l.post FROM travel.member m,local l where id = ? and m.category1=l.code1 or m.category1=l.code2 or m.category1=l.code3 or m.category1=l.code1 or m.category1=l.code2 or m.category1=l.code3 or m.category2=l.code1 or m.category2=l.code2 or m.category2=l.code3 or m.category3=l.code1 or m.category3=l.code2 or m.category3=l.code3";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();  
	         while (rs.next()) {
	        	 result.put(rs.getString("name"), rs.getString("post"));
	         }
	         pstmt.close();
	   
	      }catch(Exception e) {
	         System.out.println(e.toString());
	      }
	      return result;
	      
	   }
}
