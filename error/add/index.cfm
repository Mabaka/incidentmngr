<cfscript>
    view = "../views/error/index.cfm";    
    user_controller = new controller.user.user();    
    user = user_controller.getCurrentUser();  

    criticalities_model = entityLoad("Criticalities");   
    criticalities = entityToQuery(criticalities_model);

    importances_model = entityLoad("Importances");   
    importances = entityToQuery(importances_model);

    statuses_model = entityLoad("Statuses");   
    statuses = entityToQuery(statuses_model);    
</cfscript>

<cfinclude  template="../../templates/main.cfm">