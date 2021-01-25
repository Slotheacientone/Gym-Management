package com.digimation.goldengym.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnection {

	private static String username = "n1mkrppqiji3qprg";
	private static String password = "m7ahtpc0cwk3igpl";
	private static String URL = "mysql://n1mkrppqiji3qprg:m7ahtpc0cwk3igpl@z5zm8hebixwywy9d.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/tvmiawih19nlst2p";
	private static String driverClass = "com.mysql.cj.jdbc.Driver";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(URL, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;

	}

	public static void main(String[] args) {
		if (getConnection() != null)
			System.out.println(1);
		else
			System.out.println(0);

	}

}
