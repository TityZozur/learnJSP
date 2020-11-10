package web.javaBeans;

import java.util.ArrayList;


public class UserListBean {
	String urlaubsziel;
	String bewertung;
	ArrayList<String> alleUzBew;

	public 	UserListBean() {
		super();
		alleUzBew = new ArrayList<String>();
	}

	public String getAnzeigeHtml(){
		String s = "";
		for(String uzBew : alleUzBew){
			s += uzBew + "\n";
		}
		return s;
	}
	public void schreibe(String urlaubsziel, String bewertung){
		alleUzBew.add(urlaubsziel + ": " + bewertung);
	}
	public void schreibeUzBew(){
		alleUzBew.add(this.urlaubsziel + ": " + this.bewertung);
	}
	public void loescheUzBew(){
		alleUzBew.clear();
	}
	public String getUrlaubsziel() {
		return urlaubsziel;
	}

	public void setUrlaubsziel(String urlaubsziel) {
		this.urlaubsziel = urlaubsziel;
	}

	public String getBewertung() {
		return bewertung;
	}

	public void setBewertung(String bewertung) {
		this.bewertung = bewertung;
	}

	public ArrayList<String> getAlleUzBew() {
		return alleUzBew;
	}

	public void setAlleUzBew(ArrayList<String> alleUzBew) {
		this.alleUzBew = alleUzBew;
	}
		
}
