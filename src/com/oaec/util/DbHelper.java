package com.oaec.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;

/**
 * 数据库操作助手类、主要作用就是用于获取数据库的连接
 * 
 */
public class DbHelper {
	static String url;//声明URL
	static String username;//声明用户名
	static String password;//声明密码
	static String driver;//声明驱动
	static {
		try {
			//创建Properties对象
			Properties props = new Properties();
			//获取配置文件输入流
			InputStream is = 
			  Thread.currentThread().
				getContextClassLoader()
				  .getResourceAsStream(
						"dbconfig.properties");
			//加载配置文件
			props.load(is);
			
			driver = props.getProperty("driverClassName");
			url = props.getProperty("url");
			username = props.getProperty("user");
			password = props.getProperty("password");
			
			
			//通过反射加载驱动类
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//获取连接的方法
	public static Connection getConnection(){
		//声明连接对象
		Connection conn=null;
		try {//通过驱动管理器获取连接对象
			conn=DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}//返回连接对象
		return conn;
	}
	
	//关闭资源的方法
	public static void doClose(ResultSet rs,
						 PreparedStatement pstm,
						 Connection conn) {
		//关闭资源
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstm!=null){
			try {
				pstm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	
	
	
	
	
	
	
	
	
	
	
/*	*//**创建一个集合类，用于加载配置文件*//*
	private static Properties props = new Properties();
	
	*//**数据源对象*//*
	private static DataSource dds = null;
	
	
	*//**静态代码块中加载配置文件*//*
	static{
		try {
			InputStream is = Thread.currentThread()
					.getContextClassLoader()
					.getResourceAsStream("dbconfig.properties");
			
			props.load(is);
			
			//根据配置文件来创建一个Druid连接池
			dds = DruidDataSourceFactory.createDataSource(props);
			
		} catch (IOException e) {
			System.err.println("加载数据库配置文件失败！请检查");
			e.printStackTrace();
		} catch (Exception e) {
			System.err.println("创建连接池失败！");
			e.printStackTrace();
		}
	}
	
	private DbHelper(){}
	
	*//**
	 * 获取数据库的一个连接对象
	 * 
	 *//*
	public static Connection getConn() throws SQLException{
		return dds.getConnection();
	}*/
}
