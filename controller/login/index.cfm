<cfparam name="form.login" type="string" default=""/>
<cfparam name="form.password" type="string" default=""/>
<cfscript>		
	login = new login(form.login, form.password);	
	result = "";
	//Можно было бы сделать доступной переменную логин везде. И делать logout с неё, а не создавать новую.
	if(url["action"] == "logout") { login.logout(); location('/',false);};
	if(url["action"]=="login") {response = login.checkCredentials();result = response;}		 
	if(url["action"]=="reg") {result = login.reg();}
</cfscript>
<cfoutput>
	#result#
</cfoutput>		
