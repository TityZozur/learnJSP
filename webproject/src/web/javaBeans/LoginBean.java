package web.javaBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.jdbc.*;

public class LoginBean {
	String userid;
	String password;
	boolean loggedIn;
	Connection dbConn;
	
	public LoginBean() throws ClassNotFoundException, SQLException{
		dbConn = new PostgresCon().getConnection();
		this.userid   = "";
		this.password = "";
		this.loggedIn = false;
//		this.setLoggedIn(false);
	}
	
	public boolean checkUseridPasswort() throws SQLException{
		String sql = "SELECT userid " + 
				"FROM USER " +
				"WHERE USERID = ? AND PASSWORD = ?";
		System.out.println(sql);
		PreparedStatement prepStat = dbConn.prepareStatement(sql);
		prepStat.setString(1, this.getUserid());
		prepStat.setString(2, this.getPassword());
		ResultSet dbRes = prepStat.executeQuery();
		// return dbRes.next();
		if (dbRes.next()) return true;
		else return false;
	}
	
	
	public String toString(){
		String s = "UserBean mit ";
				s+= "userid: " + this.getUserid() + ", ";
				s+= "password: " + this.getPassword() + ", ";
		return s;
	}
	public boolean isLoggedIn() {
		return loggedIn;
	}
	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
