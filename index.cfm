<cfquery name="test" datasource="MyDSN">
    SELECT id,login FROM public.users;
</cfquery>

<cfoutput query="test">
    #id#
    #login#
</cfoutput>