package web.javaBeans;

public class MsgBean {
	
	String infoMsg;
	String actionMsg;
	
	public MsgBean() {
		this.setRegWelcome();
	}
	
	public void setLoginSuccess(){
		this.setInfoMsg("Du hast Dich erfolgreich angemeldet");
		this.setActionMsg("Jetzt mach irgendwas");
	}
	public void setLoginFailed(){
		this.setInfoMsg("Deine Anmeldung hat leider nicht geklappt");
		this.setActionMsg("Versuche es nochmal");
	}
	public void setUseridLeer(){
		this.setInfoMsg("Dein Nickname muss mindestens ein Zeichen lang sein");
		this.setActionMsg("Wähle einen anständigen Nickname");
	}
	
	public void setGeneralWelcome(){
		this.setInfoMsg("Willkommen beim BW4S-Portal");
		this.setActionMsg("Bitte melde Dich an");
	}

	public void setRegWelcome(){
		this.setInfoMsg("Willkommen zur O4S-Registrierung");
		this.setActionMsg("Bitte registrieren Sie sich");
	}
	
	public void setSystemfehler(){
		this.setInfoMsg("Es ist ein Fehler aufgetreten");
		this.setActionMsg("Sage Deinem Admin Bescheid");
	}
	public void setAlreadyExists(String userid){
		this.setInfoMsg("Der Nickname " + userid + " ist schon vergeben");
		this.setActionMsg("Wähle einen anderen Nickname aus");
	}
	public void setRegSuccess(String userid){
		this.setInfoMsg("Super, " + userid + ", Du hast Dich erfolgreich registriert");
		this.setActionMsg("geh jetzt zum Login");
	}
	
	public void setLogoutSuccessful(){
		this.setInfoMsg("Super,");
		this.setActionMsg("Sie haben sich ausgeloggt");
	}	
	
	public String getInfoMsg() {
		return infoMsg;
	}

	public void setInfoMsg(String infoMsg) {
		this.infoMsg = infoMsg;
	}

	public String getActionMsg() {
		return actionMsg;
	}

	public void setActionMsg(String actionMsg) {
		this.actionMsg = actionMsg;
	}

}
