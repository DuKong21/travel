package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Db.DBAction;
import Dto.Userinfo;

public class CategoryDao {
	public int updateDate(Userinfo dto) {
	      int result = 0;
	      Connection conn = DBAction.getInstance().getConnection();
	      PreparedStatement pstmt = null;
	      String sql;
	      try {
	         sql  = "update  member set category1 = ?,category2 = ?,category3 = ? where id = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, dto.getCategory1());
	         pstmt.setInt(2, dto.getCategory2());
	         pstmt.setInt(3, dto.getCategory3());
	         pstmt.setString(4, dto.getId());
	         result = pstmt.executeUpdate();  
	         pstmt.close();
	   
	      }catch(Exception e) {
	         System.out.println(e.toString());
	      }
	      return result;
	      
	   }
}
