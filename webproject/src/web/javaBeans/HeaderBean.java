package web.javaBeans;

public class HeaderBean {

	public HeaderBean() {
		
	}
	public String getHeaderHtml(){
		String html = "<table>" +
				"	<tr>" +
				"		<td><h2>BW4S-Portal</h2></td>" +
				"		<td>" +
				"			<img src='../img/FH-Logo.jpg' " +
				"				title='Hochschule Ludwigshafen' " +
				"				width='312' height='91' />" +
				"		</td>" +
				"	</tr>" +
				"</table>";
		return html;
	}

}