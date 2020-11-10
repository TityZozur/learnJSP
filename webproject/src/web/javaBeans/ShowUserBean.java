package web.javaBeans;

import java.sql.*;

import web.jdbc.PostgresCon;

public class ShowUserBean {

	String htmlString;
	
	public ShowUserBean(){
		super();
		this.readDbToHtml();
	}
	public void readDbToHtml(){
		String myHtml = "<table>\n";
		
		String feldliste = "USERID, PASSWORD, ACTIVE, ADMIN, USERNAME, EMAIL";
		String[] feldArray = {"USERID", "PASSWORD", "ACTIVE", "ADMIN", "USERNAME", "EMAIL"};

		myHtml += "<tr>\n";
		for (String feldname : feldArray){
			myHtml += "<th>" + feldname + "</th>\n"; 
		}
		myHtml += "</tr>\n";

		String sql = "SELECT " + feldliste + " FROM USER";
		System.out.println(sql);

		try{
			Connection dbConn = new PostgresCon().getConnection();
			ResultSet dbRes = dbConn.createStatement().executeQuery(sql); 
			while (dbRes.next()){
				myHtml += "<tr>\n";
				for(String feldname : feldArray){
					myHtml += "<td>" + dbRes.getString(feldname) + "</td>\n"; 
				}
				myHtml += "</tr>\n";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		myHtml += "</table>\n";

		this.htmlString = myHtml;
		//lies aus DB mit SQL SELECT -> ResultSet
		//	SQL String bauen und syso
		//	Connection und Statement
		//	executeQuery -> ResultSet
		//beginne html mit <table>
		//durchlaufe ResultSet zeilenweise
		//	while-Schleife über alle Zeilen des ResultSet
		//		mache aus jeder Zeile eine HTML-Ausgabezeile
		//			<tr>
		//				für jedes Feld
		//					<td>Feldwert</td>
		//			</tr>
		//beende html mit </table>
	}
	public String getHtmlString() {
		return htmlString;
	}
	public void setHtmlString(String htmlString) {
		this.htmlString = htmlString;
	}
}
