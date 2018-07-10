package com.zryx.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;



/**   
 * 工具类。用来获取数据库信息。
 */
public class DBUitl {
	private static String driver;
	private static String url;
	private static String username;
	private static String password;
	
	//配置文件的数据，只是加载一次
	static{
		FileInputStream fis=null;
		try {
			String path=DBUitl.class.getResource("/db.properties").getPath();
			System.out.println("数据库配置文件路径:"+path);
			 fis=new FileInputStream(path);
			Properties pro=new Properties();
			pro.load(fis);
		
			driver=pro.getProperty("driver");
			url=pro.getProperty("url");
			username=pro.getProperty("username");
			password=pro.getProperty("password");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 加载驱动和连接数据 库
	 * @return
	 */
     public static Connection getConn(){
    	 Connection conn=null;
    	 
    	 try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,username,password);
    		 
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 
    	 return conn;
     }

     public static ResultSet query(String sql){
    	 Connection conn=null;
    	 Statement sm=null;
    	 ResultSet rs=null;
    	 
    	 try {
    		 conn=DBUitl.getConn();
    		 sm=conn.createStatement();
    		 System.out.println("查询的sql:" + sql);
    		 rs=sm.executeQuery(sql);
   		 
   		/*
   		 * while(rs.next()){
  			 System.out.println(
					 rs.getLong("id")+" "+
   					 rs.getString("name")+" "+
  					 rs.getDate("BIRTHDAY")
  					 );
   		 }*/
   		 
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return rs;
   
      }
     
     /**
      * 跟新数据库信息
      * @param sql
      * @return
      */
 	public static int update(String sql){
		Connection conn=null;
		Statement  sm=null;
		int i=0;
		
		try {
			conn = DBUitl.getConn();
			sm = conn.createStatement();
			System.out.println("更新的sql" + sql);
			//执行sql语句
			i = sm.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			try {
				if (sm != null) {
					sm.close();
				}
				
				if(conn!=null){
					conn.close();
				}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
			
		}
		return i;
	}


	  /**
	   * 关闭连接
	   * @param rs
	   */
		public static void close(ResultSet rs){
			Connection conn=null;
			Statement sm=null;
			try {
				if(rs!=null){
					sm=rs.getStatement();
					rs.close();
				}
				if(sm!=null){
					conn=sm.getConnection();
					sm.close();
				}
				if(conn!=null){
					
					conn.close();
				}
				
	
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
		

