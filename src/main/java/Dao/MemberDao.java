package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Db.DBAction;
import Dto.Userinfo;

public class MemberDao {   
   public int insertData(Userinfo dto) {
      int result = 0;
      Connection conn = DBAction.getInstance().getConnection();
      PreparedStatement pstmt = null;
      String sql;
      try {
         sql  = "insert into member(id, pw, name, sex, p_number, post, address, age, email)"
               + "values(?,?,?,?,?,?,?,?,?)";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, dto.getId());
         pstmt.setString(2, dto.getPw());
         pstmt.setString(3, dto.getName());
         pstmt.setString(4, dto.getSex());
         pstmt.setInt(5, dto.getP_number());
         pstmt.setString(6, dto.getPost());
         pstmt.setString(7, dto.getAddress());
         pstmt.setInt(8, dto.getAge());
         pstmt.setString(9, dto.getEmail());
         
         result = pstmt.executeUpdate();
         pstmt.close();
   
      }catch(Exception e) {
         System.out.println(e.toString());
      }
      return result;
      
   }
   public Userinfo getUserinfo(String id, String pw) {
	   Connection conn = DBAction.getInstance().getConnection();
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   Userinfo userinfo = null;
	   String sql;
	   try {
		   sql = "select * from member where id=? and pw=?";
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   pstmt.setString(2, pw);		   
		   rs = pstmt.executeQuery();
		   if (rs.next()) {
			   userinfo = new Userinfo();
			   userinfo.setId(rs.getString("id"));
			   userinfo.setPw(rs.getString("pw"));
			   userinfo.setName(rs.getString("name"));
			   userinfo.setSex(rs.getString("sex"));
			   userinfo.setP_number(rs.getInt("p_number"));
			   userinfo.setPost(rs.getString("post"));
			   userinfo.setAddress(rs.getString("address"));
			   userinfo.setAge(rs.getInt("age"));
			   userinfo.setEmail(rs.getString("email"));
			   
			   
		   }
	   }catch(Exception e) {
	         System.out.println(e.toString());
	   }
	   return userinfo;
   }
}