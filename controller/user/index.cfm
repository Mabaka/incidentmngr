<cfscript>		
	user_controller = new user();
	
    if(url["action"] == "add") { user_controller.addNewUser() };
    if(url["action"] == "delete") { user_controller.deleteUser() };
    if(url["action"] == "edit") { user_controller.editUser() };
</cfscript>