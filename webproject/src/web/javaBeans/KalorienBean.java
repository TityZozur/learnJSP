package web.javaBeans;

import java.util.HashMap;

public class KalorienBean {
	String[] alleNahrungsmittel = {"Aachener Printen", "Aal geräuchert", "After Eight",
			"Alkoholfreies Bier", "Altbier", "Ananas frisch",
			"Apfelkompott gezuckert", "Artischocken", "Aubergine",
			"Austern", "Austernpilze", "Avocado"};
	double[] kalorien = {400, 340, 425, 24, 44, 56, 80, 50, 22.5, 70, 25, 372};
	HashMap<String, Double> ausgewNahrungsmittel;
	
	public KalorienBean(){
		this.ausgewNahrungsmittel = new HashMap<String,Double>();
	}
	public int getIndexFromNahrungsmittel(String nahrungsmittel){
		for (int index = 0; index < this.alleNahrungsmittel.length; index++){
			if (nahrungsmittel.equals(this.alleNahrungsmittel[index])) return index;
		}
		return -1;
	}
	
	public String getKalorienanzahlAsHtml(){
		double myKalorien = 0;
		for (String nahrungsmittel : this.ausgewNahrungsmittel.keySet()){
			double myGramm = this.ausgewNahrungsmittel.get(nahrungsmittel);
			int myIndex = this.getIndexFromNahrungsmittel(nahrungsmittel);
			double myKal100 = kalorien[myIndex];
			myKalorien += myGramm * myKal100 / 100;
		}
		return "" + myKalorien;
	}
	
	public void setNamiGramm(String nami, String namiGramm){
		double myGramm = 0;
		try{
			myGramm = Double.parseDouble(namiGramm);
		}catch(NumberFormatException nfe){
			nfe.printStackTrace();
		}
		if (myGramm < 0) myGramm = 0;
		this.ausgewNahrungsmittel.put(nami, myGramm);
	}

	
	
	public void merkDirDieAuswahl(String[] auswahl){
		this.ausgewNahrungsmittel.clear();
		for(String indexString : auswahl){
			int index = Integer.valueOf(indexString);
			//int index = Integer.parseInt(indexString);
			String myNahrungsmittel = this.alleNahrungsmittel[index];
			this.ausgewNahrungsmittel.put(myNahrungsmittel, new Double(0.0));			
		}
	}

	public String getAuswahlAsHtml(){
		String html = "";
		for (String nahrungsmittel : this.ausgewNahrungsmittel.keySet()){
			double myGramm = this.ausgewNahrungsmittel.get(nahrungsmittel);
			html += "<tr><td>" + nahrungsmittel + ":</td>" +
					"<td><input type='text' name='" + nahrungsmittel
										+ "' value='" + myGramm + "' /></td>" +
					"<td>g</td></tr>\n";
		}
		return html;
	}
	
	public double getKalorienzahl(){
		
		
		return 0;
	}
	public String getAlleAsOptionsHtml(){
		String html = "";
		for (int index = 0; index < alleNahrungsmittel.length; index++){
			html += "<option value='" + index + "'>" + 
					alleNahrungsmittel[index] +
					"</option><br />\n";
		}
		return html;
	}
	public int getAlleNahrungsmittelLength(){
		return this.alleNahrungsmittel.length;
	}
	
	
}
