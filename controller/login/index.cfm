﻿<cfscript>		
	login = new login(form.login, form.password);
	response = login.checkCredentials();		
	response_struct = deserializeJSON(response);

	if(response_struct.status == 200) {		
		location('/main/',false);
	}		
</cfscript>