package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	String sql ="select * from auth where uname=? and pass=?";

	public boolean check(String uname,String pass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
            PreparedStatement ps = con1.prepareStatement(sql);
            ps.setString(1, uname);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
            	return true;
            }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
