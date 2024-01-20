<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(!session.isLoggedIn){
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>

