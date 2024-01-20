<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(session.isLoggedIn){
            location('/main/',false);
        }else{
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>