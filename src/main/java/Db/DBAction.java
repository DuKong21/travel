package Db;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBAction {
	public static DBAction instance = new DBAction();
	private Connection conn;
	
	
	public DBAction() {
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/travel?";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,"root","java");
			System.out.println("연결되었습니다");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static DBAction getInstance() {
		if(instance==null) {
			instance = new DBAction();
		}
		return instance;
	}
	public Connection getConnection() {
		return conn;
	}
	public void close() {
		try {
			if(conn!=null)conn.close();
		}catch(Exception e) {}
	}
	
}
