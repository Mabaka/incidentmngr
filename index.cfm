<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(session.isLoggedIn){
            location('/error/list',false);
        }else{
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>