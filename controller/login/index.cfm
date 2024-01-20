<cfscript>		
	login = new login();	

	//Можно было бы сделать доступной переменную логин везде. И делать logout с неё, а не создавать новую.
	if(url["action"] == "logout") { login.logout(); location('/',false);};

	if(url["action"]=="login") {
		login = new login(form.login, form.password);	
		response = login.checkCredentials();		
		response_struct = deserializeJSON(response);

		if(response_struct.status == 200) {		
			location('/',false);
		}		
	 }	
</cfscript>
