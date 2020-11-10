function initRegView(){
	document.forms[0].userid.focus();
}
function inputCheck(myForm){
	var isCorrect   = true;
	var useridMsg   = document.getElementById("useridMsg");
	var passwordMsg = document.getElementById("passwordMsg");
	var usernameMsg = document.getElementById("usernameMsg");
	var emailMsg    = document.getElementById("emailMsg");
	
	useridMsg.innerHTML = "";
	passwordMsg.innerHTML = "";
	emailMsg.innerHTML = "";
	
	if (!this.emailCheck(myForm.email.value, emailMsg)){
		isCorrect = false;
		myForm.email.focus();
	}
	if (!myForm.password.value){
		passwordMsg.innerHTML = "Dein Passwort darf nicht leer sein";
		isCorrect = false;
		myForm.password.focus();
	}
	if (!myForm.userid.value){
		useridMsg.innerHTML = "Dein Nickname darf nicht leer sein";
		isCorrect = false;
		myForm.userid.focus();
	}
	return isCorrect;
}
function emailCheck(myMailAddress, myErrorField){
	var test = myMailAddress.toString();
//	var test = "test@abc.de";
	var atIndex = test.indexOf("@",0);
	if (atIndex == 0){
		myErrorField.innerHTML="@ am Anfang ist doof";
		return false;
	}
	var rightPart = test.substring(atIndex + 1, test.length);
	if (!rightPart){
		myErrorField.innerHTML="@ am Ende ist doof";
		return false;
	}
	if (rightPart.indexOf("@") >= 0){
		myErrorField.innerHTML="2 x @ ist doof";
		return false;
	}
}


function hello(text){
	
	window.close();
	
//	alert(text);
//	confirm("alles klar?");
//	prompt("sag was!");
}

function switchIt(){
	var myLogArea = document.getElementById("logArea");
	var myImg = document.images[0];
	var mySrc = myImg.src;
	var pathEndPos = mySrc.lastIndexOf("/");
	var pathName = mySrc.substring(0, pathEndPos + 1);
	if (mySrc.indexOf("Donald") >= 0 ){
		myImg.src = pathName + "MickyMaus.jpg";
		myImg.alt = "Bild von Micky Maus";
		myImg.title = "Micky Maus";
		
		var newProtSatz =
			"<span class='mickyLog'>" +
			this.getDateTimeString() +
			" switched from Donald to Micky" +
			"</span><br />";
//		alert(newProtSatz);
		
		myLogArea.innerHTML = newProtSatz + myLogArea.innerHTML;
	}else{
		myImg.src = pathName + "DonaldDuck.jpg";
		myImg.alt = "Bild von Donald Duck";
		myImg.title = "Donald Duck";

		var newProtSatz =
			"<span class='donaldLog'>" +
			this.getDateTimeString() +
			" switched from Micky to Donald" +
			"</span><br />";
//		alert(newProtSatz);

		myLogArea.innerHTML = newProtSatz + myLogArea.innerHTML;
	}
}

function getDateTimeString(){
	var myDate = new Date();
	var myDateTimeString =
		myDate.getFullYear() + "-" + 
		this.toTwoDigits(myDate.getMonth() + 1) + "-" +
		this.toTwoDigits(myDate.getDay()) + ", " +
		this.toTwoDigits(myDate.getHours()) + ":" +
		this.toTwoDigits(myDate.getMinutes()) + ":" +
		this.toTwoDigits(myDate.getSeconds());
//	var myDateTimeString = myDate.toString();
	return myDateTimeString;
}
function toTwoDigits(dateNum){
	dateNum = "00" + dateNum;
	return dateNum.substring(dateNum.length - 2, dateNum.length); 
}
