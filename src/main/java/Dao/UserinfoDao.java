package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Db.DBAction;



public class UserinfoDao {
   public boolean exist(String id,String pw) {
      
      Connection conn = DBAction.getInstance().getConnection();
      Statement stmt = null;
      ResultSet rs = null;
      try {
         stmt = conn.createStatement();
         rs = stmt.executeQuery("select * from member");
         while(rs.next()) {
            if(rs.getString(1).equals(id)&&rs.getString(2).equals(pw)) {
               return true;
            }
         }
         
         
         
      } catch (Exception e) {
         // TODO: handle exception
      }
      return false;
      
   }
}