package web.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public abstract class JDBCon {
	Connection dbConn;
	String dbURL;
	String dbUser;
	String dbPassword;
	String dbSchema;
	
	public JDBCon() throws SQLException, ClassNotFoundException{
		this.setDBParms();
		this.createConnection();				
	}
	
	public abstract void setDBParms();

	public void setSchema() throws SQLException, ClassNotFoundException {
		String sql = "SET SCHEMA \'" + dbSchema + "\";\'";
		PreparedStatement prepStat = dbConn.prepareStatement(sql);		
		prepStat.executeUpdate();
		System.out.println("Schema " + dbSchema + " successful set.");
	}
	
	public void createConnection() throws ClassNotFoundException, SQLException{
		Class.forName("org.postgresql.Driver");		
		System.out.println("PostgreSQL-Driver successful loaded.");
		
		try {
			dbConn = DriverManager.getConnection(dbURL,	dbUser, dbPassword);
			System.out.println("...Database connection successful set...");
		} catch (Exception e) {
			//throw e;
			System.out.println("ERROR----> " + e.getMessage());
		}

	}
	
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		try{
			this.setSchema();
			return dbConn;
		}catch(SQLException se){
			throw se;
		}
	}
}
