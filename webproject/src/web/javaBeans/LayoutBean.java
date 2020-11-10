package web.javaBeans;

public class LayoutBean {
	
	public LayoutBean(){
		super();
	}

	public String getHeadlineHtml(){
		String html = "";
		html += "<table>\n";
		html += "	<tr>\n";
		html += "		<td><h3>BW4S Portal</h3></td>\n";
		html += "		<td>\n";
		html += "			<img src='../img/FH-Logo.jpg'\n";
		html += "				title='HS Lu'\n";
		html += "				width='243'\n";
		html += "				height='70'\n";
		html += "			>\n";
		html += "		</td>\n";
		html += "	</tr>\n";
		html += "</table>\n";
		return html;
	}
	
}
