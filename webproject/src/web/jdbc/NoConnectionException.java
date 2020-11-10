package web.jdbc;

import java.sql.SQLException;

@SuppressWarnings("serial")
public class NoConnectionException extends SQLException {
	public NoConnectionException(){
		super("JDBC Connection failed.");
	}
	public NoConnectionException(String msg) {
		super(msg);
	}
}
