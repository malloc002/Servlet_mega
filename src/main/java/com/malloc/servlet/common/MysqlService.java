package com.malloc.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//객체 생성이 되야 쓰일 수 있는 멤버변수는 static 안에서 쓰일 수 없기 때문에 같이 static으로 만듬
	private static MysqlService mysqlService = null;

	//접속주소, 아이디, 비밀번호
	private String url = "jdbc:mysql://localhost:3306/dulumary_0119";
	private String userId = "root";
	private String password = "root";
	
	private Statement statement;
	private Connection connection;
	
	//객체를 관리하는 메소드 -> 객체를 생성해서 필요한 곳에 주는 역할
	//static으로 만들어서 객체 생성 안해도 쓸 수 있는 메소드로 만들어줌
	//static 메소드에서는 static 멤버 변수만 사용 가능하다
	public static MysqlService getInstance() {
		
		//딱 한번만 만들어지게 함 -> singleton이기 때문 
		if(mysqlService == null)
		{
			//클래스 안에서 객체 생성
			mysqlService = new MysqlService();
		}
		
		//이미 만들어져 있으면 그거 리턴
		return mysqlService;
	}
	
	//기본 생성자를 private으로 만들어서 직접 객체 생성 못하게 막는 것
	private MysqlService() {
		//-> 객체를 사용할 수 있는 방법은 getInstance를 통해서만 가능하게 한 것
	}
	
	//접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//select 쿼리 수행기능
	public ResultSet select(String query) {
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//에러가 나는 경우도 return을 해주어야 하기 때문에 null return
			return null;
		}
	}
	
	//insert, update, delete 쿼리 수행기능
	public int update(String query) {
		//실행된 행의 개수
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return -1;
		}
	}
	
	//접속 끊기
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
