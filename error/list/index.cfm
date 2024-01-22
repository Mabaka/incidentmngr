<cfscript>
    view = "../views/error_list/index.cfm";      
    user_controller = new controller.user.user();    
    user = user_controller.getCurrentUser();  

    errors = entityLoad('Error',{},"number ASC")    
</cfscript>

<cfinclude  template="../../templates/main.cfm">