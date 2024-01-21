<cfparam name="form.login" type="string" default=""/>
<cfparam name="form.password" type="string" default=""/>
<cfparam name="form.name" type="string" default=""/>
<cfparam name="form.secondname" type="string" default=""/>

<cfscript>		
	user_controller = new user();
	result = "";
    if(url["action"] == "add") {result = user_controller.addNewUser(form.login,form.name,form.secondname,form.password);};
    if(url["action"] == "delete") { user_controller.deleteUser() };
    if(url["action"] == "edit") { user_controller.editUser() };
</cfscript>

<cfoutput>
	#result#
</cfoutput>	