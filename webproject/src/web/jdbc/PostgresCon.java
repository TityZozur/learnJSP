package web.jdbc;

import java.sql.SQLException;

public class PostgresCon extends JDBCon {
	
	public PostgresCon() throws ClassNotFoundException, SQLException {
		super();
	}	
	public void setDBParms() {
		dbURL  		= "jdbc:postgresql://127.0.0.1:5432/webDB";
		dbUser 		= "postgres";
		dbPassword  = "mydb";
		dbSchema	= "S622691" ;
		
		System.out.println("DB params successful set.");		
	}	
	public static void main(String[] args) throws SQLException, ClassNotFoundException{
		new PostgresCon().getConnection();
	}

}
