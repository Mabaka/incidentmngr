<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(!session.isLoggedIn){
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>
<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th>
                    Номер
                </th>
                <th>
                    Дата
                </th>
                <th>
                    Краткое описание
                </th>
                <th>
                    Пользователь
                </th>
                <th>
                    Статус
                </th>
                <th>
                    Важность
                </th>
                <th>
                    Критичность
                </th>
            </tr>
        </thead>
        <tbody>
        <cfloop array=#errors# index="error">
            <cfoutput>
                <tr>
                    <td><a href="/error/element/?id=<cfoutput>#error.getId()#</cfoutput>">#error.getNumber()#</a></td>
                    <td>#dateformat(#error.getDate()#,"yyyy-mm-dd")# #timeFormat(#error.getDate()#,"HH:MM")#</td>
                    <td>#error.getShort_desk()#</td>
                    <td>#error.getUser().getName()#</td>
                    <td>#error.getStatuse().getName()#</td>
                    <td>#error.getImportance().getName()#</td>
                    <td>#error.getCriticality().getName()#</td>
                </tr>
            </cfoutput>            
        </cfloop>            
        </tbody>
    </table>
</div>