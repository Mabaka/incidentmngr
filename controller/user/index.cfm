<cfparam name="form.login" type="string" default=""/>
<cfparam name="form.password" type="string" default=""/>
<cfparam name="form.name" type="string" default=""/>
<cfparam name="form.secondname" type="string" default=""/>
<cfparam name="form.id" type="string" default=""/>

<cfscript>		
	user_controller = new user();
	result = "";
    if(url["action"] == "add") {result = user_controller.addNewUser(form.login,form.name,form.secondname,form.password);};
    if(url["action"] == "delete") { user_controller.deleteUser() };
    if(url["action"] == "edit") { result = user_controller.editUser(form.id,form.login,form.name,form.secondname,form.password);};
</cfscript>

<cfoutput>
	#result#
</cfoutput>	