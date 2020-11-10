package web.javaBeans;

import static org.junit.jupiter.api.Assertions.*;
import java.sql.SQLException;
import org.junit.jupiter.api.Test;

class UserBeanTest {

	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	public void testDruckDich() throws ClassNotFoundException, SQLException{
		UserBean user = new UserBean();
		user.setUserid("testuser1");
		user.setPassword("geheim");
		user.setUsername("Test User sein Name 1");
		user.setEmail("testus1@abc.de");
		user.setAdmin("N");
		user.setActive("Y");
		
		user.druckDichAus();
		
	}	

}
