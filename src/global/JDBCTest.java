package global;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @date :2016. 6. 30.
 * @author :오승준
 * @file :JDBCTest.java
 * @story :
 */
public class JDBCTest {
	public static void main(String[] args) {
		Connection con;
		Statement stmt;
		ResultSet rs;
		String sql = "select name from member where id = 'you'",result="";
		List<String> list = new ArrayList<String>();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			con = DriverManager.getConnection(
					Constants.ORACLE_URL,
					Constants.USER_ID,
					Constants.USER_PW);
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				result = rs.getString(1);
				list.add(result);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(list);
	}
}
