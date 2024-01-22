<cfparam name="form.error_num" type="string" default=""/>
<cfparam name="form.error_date" type="string" default=""/>
<cfparam name="form.error_short_desk" type="string" default=""/>
<cfparam name="form.error_full_desk" type="string" default=""/>
<cfparam name="form.error_statuse" type="string" default=""/>
<cfparam name="form.error_importance" type="string" default=""/>
<cfparam name="form.error_criticality" type="string" default=""/>
<cfparam name="form.error_user" type="string" default=""/>
<cfparam name="form.error_id" type="string" default=""/>

<cfscript>		
	error = new error();	
	result = "";	
	if(url["action"] == "add") {result = error.addNew(
        form.error_num,
        form.error_date,
        form.error_short_desk,
        form.error_full_desk,
        form.error_statuse,
        form.error_importance,
        form.error_criticality,
        form.error_user
    )};	

    if(url["action"] == "upd") {result = error.upd(
        form.error_id,
        form.error_num,
        form.error_date,
        form.error_short_desk,
        form.error_full_desk,
        form.error_statuse,
        form.error_importance,
        form.error_criticality,
        form.error_user
    )};
</cfscript>
<cfoutput>
	#writeDump(result)#
</cfoutput>		
