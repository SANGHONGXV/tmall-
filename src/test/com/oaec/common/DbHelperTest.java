package test.com.oaec.common;

import java.sql.Connection;
import java.sql.SQLException;

import com.oaec.util.DbHelper;

/**
 * DbHelper单元测试类
 * 
 *
 */
public class DbHelperTest {
	
	public static void main(String[] args) {
		Connection conn = DbHelper.getConnection();
		
		System.out.println(conn);
	}
}
