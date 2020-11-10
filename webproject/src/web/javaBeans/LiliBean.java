package web.javaBeans;

public class LiliBean {
	String name;
	String lili;
	StringBuffer alleLili;
	
	public LiliBean() {
		super();
		this.alleLili = new StringBuffer();
	}
	
	public void merken(String name, String[] gerichte){
		this.name = name;
		
		String temp = "";
		for (String gericht : gerichte){
			temp += gericht + ", ";
		}
		temp = temp.substring(0, temp.length() - 2);
		this.lili = temp;
	}
	public void ok(){
		this.alleLili.append(this.name).append(": ").append(this.lili).append("\n");
	}
	public void loeschen(){
		this.alleLili = new StringBuffer();
	}
	
	public String getAlleLiliHtml(){
		return "BW4S proudly presents alle Lili:\n" +
					this.alleLili.toString();
	}
	
	
	public StringBuffer getAlleLili() {
		return alleLili;
	}

	public void setAlleLili(StringBuffer alleLili) {
		this.alleLili = alleLili;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLili() {
		return lili;
	}

	public void setLili(String lili) {
		this.lili = lili;
	}


}
