package web.javaBeans;

import java.util.HashMap;
import java.util.Iterator;

public class UrlaubsBean {
	
	String urlaubsziel;
	String bewertung;
	HashMap<String, String> alleZiele;
	
	public UrlaubsBean() {
		super();
		this.alleZiele = new HashMap<String, String>();
	}
	
	public String getAlleZieleAsHtml(){
		String html = "";
//		for(String key : alleZiele.keySet()){
//			html += key + ": " + alleZiele.get(key) + "\n";  
//		}
		Iterator<String> iter = alleZiele.keySet().iterator();
		while (iter.hasNext()){
			String key   = iter.next();
			String value = alleZiele.get(key);
			html += key + ": " + value + "\n";  
		}
		return html;
	}
	
	public void fuegeHinzu(){
		this.alleZiele.put(this.urlaubsziel, this.bewertung);
	}
	public void loescheAlles(){
		this.alleZiele.clear();
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
	public HashMap<String, String> getAlleZiele() {
		return alleZiele;
	}
	public void setAlleZiele(HashMap<String, String> alleZiele) {
		this.alleZiele = alleZiele;
	}
}
