<cfscript>
    view = "../views/main/index.cfm";  
    user_controller = new controller.user.user();    
    user = user_controller.getCurrentUser();  
</cfscript>

<cfinclude  template="../templates/main.cfm">
