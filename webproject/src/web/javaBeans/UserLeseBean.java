package web.javaBeans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.Vector;

import web.jdbc.*;

public class UserLeseBean {
	
	Vector<UserClass> alleUser;
	Connection dbConn;
	//1. Tabelle aus DB lesen      im Konstr. einlesen        
	// in Get-Methode HTML draus machen
	
	public UserLeseBean() throws ClassNotFoundException, SQLException{
		dbConn = new PostgresCon().getConnection();
		alleUser = new Vector<UserClass>();
		// alle User aus Tabelle lesen und in den Vector schreiben
		String sql = "SELECT userid, password, active, " +
							"admin, username, email " +
					"FROM USER";
		System.out.println(sql);
		Statement stat = dbConn.createStatement();
		ResultSet dbRes = stat.executeQuery(sql);
		
		//ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		
		//PreparedStatement prep = dbConn.prepareStatement(sql);
		//prep.setString(1,...);
		//ResultSet dbRes = prep.executeQuery();

		while (dbRes.next()){
			//Vector<UserClass> alleUser;
			UserClass user = new UserClass(
					dbRes.getString("USERID"),
					dbRes.getString("PASSWORD"),
					dbRes.getString("ACTIVE"),
					dbRes.getString("ADMIN"),
					dbRes.getString("USERNAME"),
					dbRes.getString("EMAIL")
					      );
			alleUser.add(user);
			System.out.println(user/* .toString() */);
		}
	}
	
	public String getAlleUserAlsHtml(){
		StringBuffer sb = new StringBuffer();
		sb.append("<table border='1'>\n");
		//Vector<UserClass> alleUser;
		//for(UserClass einUser : alleUser){
		//}
		sb.append("<tr>");
		sb.append("<th>").append("Userid").append("</th>");
		sb.append("<th>").append("Password").append("</th>");
		sb.append("<th>").append("Active").append("</th>");
		sb.append("<th>").append("Admin").append("</th>");
		sb.append("<th>").append("Username").append("</th>");
		sb.append("<th>").append("Email").append("</th>");
		sb.append("</tr>\n");

		Iterator<UserClass> iter = alleUser.iterator();
		while(iter.hasNext()){
			UserClass user = iter.next();
			sb.append("<tr>");
			sb.append("<td>").append(user.getUserid()).append("</td>");
			sb.append("<td>").append(user.getPassword()).append("</td>");
			sb.append("<td>").append(user.getActive()).append("</td>");
			sb.append("<td>").append(user.getAdmin()).append("</td>");
			sb.append("<td>").append(user.getUsername()).append("</td>");
			sb.append("<td>").append(user.getEmail()).append("</td>");
			sb.append("</tr>\n");
		}
		sb.append("</table>\n");
		return sb.toString();
	}
	
//	public boolean checkUserExists() throws SQLException{
//		String sql = "SELECT userid " + 
//				"FROM USER " +
//				"WHERE USERID = ?";
//		System.out.println(sql);
//		PreparedStatement prepStat = dbConn.prepareStatement(sql);
//		prepStat.setString(1, this.getUserid());
//		ResultSet dbRes = prepStat.executeQuery();
//		// return dbRes.next();
//		if (dbRes.next()) return true;
//		else return false;
//	}
	

//	public String toString(){
//		String s = "UserBean mit ";
//				s+= "userid: " + this.getUserid() + ", ";
//				s+= "password: " + this.getPassword() + ", ";
//				s+= "active: " + this.getActive() + ", ";
//				s+= "admin: " + this.getAdmin() + ", ";
//				s+= "username: " + this.getUsername() + ", ";
//				s+= "email: " + this.getEmail();				
//		return s;
//	}
	
}
