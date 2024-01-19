<cfscript>

    importances_entity = entityLoad("Importances");
    importances = entityToQuery(importances_entity);
    writeDump(importances);
</cfscript>

<cfoutput query="importances">    
    #name#
</cfoutput>