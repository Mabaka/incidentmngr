﻿<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(!session.isLoggedIn){
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>
<div class="form_wrapper container">
    <form class="form row g-3" id="error_form">                
        <div class="col-md-6">
            <label for="error_num">Номер</label>
            <input class="form-control" name="error_num" id="error_num" type="text" value="1" readonly>
        </div>
        <div class="col-md-6">
            <label for="error_date">Дата</label>
            <input value="<cfoutput>#dateformat(now(),"yyyy-mm-dd")#T#timeFormat(now(),"HH:MM")#</cfoutput>" class="form-control" type="datetime-local" name="error_date" id="error_date" readonly>
        </div>
        <div class="col-12">
            <label for="error_short_desk">Краткое описание</label>
            <textarea style="resize:none" class="form-control" name="error_short_desk" id="error_short_desk" rows="1"></textarea>            
        </div>
        <div class="col-12">
            <label for="error_full_desk">Полное описание</label>            
            <textarea style="resize:none" class="form-control" name="error_full_desk" id="error_full_desk" rows="10"></textarea>            
        </div>
        <div class="col-md-4">
            <label for="error_importances">Срочность</label>
            <select class="form-control" name="error_importances" id="error_importances">
                <cfoutput query="importances">
                    <option value="#id#">
                        #name#
                    </option>
                </cfoutput>  
            </select>
        </div>
        <div class="col-md-4">
            <label for="error_statuses">Статус</label>
            <select class="form-control" name="error_statuses" id="error_statuses">
                <cfoutput query="statuses">
                    <option value="#id#">
                        #name#
                    </option>
                </cfoutput>                  
            </select>
        </div>
        <div class="col-md-4">
            <label for="error_criticalities">Критичность</label>
            <select class="form-control" name="criticalities" id="error_criticalities">
                <cfoutput query="criticalities">
                    <option value="#id#">
                        #name#
                    </option>
                </cfoutput>
            </select>
        </div>
        <div class="col-12">
            <p>История</p>
        </div>
        <div class="col-1">
            <label for="error_user">Пользователь</label>
            <input class="form-control" name="error_user" id="error_user" type="text" readonly value="<cfoutput>#user.getName()#</cfoutput>">
        </div>
        <div class="col-12">
            <input class="btn btn-success" id="btn_error_form_add" type="button" value="Сохранить">
        </div>        
    </form>
</div>

<script src="/public/script/error_page.js"></script>