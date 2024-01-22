<cfscript>
    if(isDefined('session.isLoggedIn')) {
        if(!session.isLoggedIn){
            location('/login/',false);
        }
    }else{
        location('/login/',false);
    }
</cfscript>
<div class="form_wrapper container">
    <div class="row justify-content-between">    
        <cfif error.getStatuse().getId() == 1>
            <button value="1" class="btn col-2 btn-outline-primary" data-bs-toggle="modal" data-bs-target="#modal">Назначение</button>
        </cfif>
        <cfif error.getStatuse().getId() == 2>
            <button value="2" class="btn col-2 btn-outline-info" data-bs-toggle="modal" data-bs-target="#modal">Решение</button>
        </cfif>
        <cfif error.getStatuse().getId() == 3>
            <button value="3" class="btn col-2 btn-outline-info" data-bs-toggle="modal" data-bs-target="#modal">Проверка</button>
            <button value="4" class="btn col-2 btn-outline-danger" data-bs-toggle="modal" data-bs-target="#modal">Переоткрытие</button>    
        </cfif>
        <cfif error.getStatuse().getId() == 4>
            <button value="4" class="btn col-2 btn-outline-danger" data-bs-toggle="modal" data-bs-target="#modal">Переоткрытие</button>    
            <button value="5" class="btn col-2 btn-outline-success" data-bs-toggle="modal" data-bs-target="#modal">Закрытие</button>
        </cfif>        
    </div>
    <form class="form row g-3" id="error_form">                
        <input type="hidden" name="id" id="error_id" value="<cfoutput>#error.getId()#</cfoutput>">
        <div class="col-md-6">
            <label for="error_num">Номер</label>
            <input class="form-control" name="error_num" id="error_num" type="text" value="<cfoutput>#error.getNumber()#</cfoutput>" readonly>
        </div>
        <div class="col-md-6">
            <label for="error_date">Дата</label>
            <input value="<cfoutput>#dateformat(error.getDate(),"yyyy-mm-dd")#T#timeFormat(error.getDate(),"HH:MM")#</cfoutput>" class="form-control" type="datetime-local" name="error_date" id="error_date" readonly>
        </div>
        <div class="col-12">
            <label for="error_short_desk">Краткое описание</label>
            <textarea style="resize:none" class="form-control" name="error_short_desk" id="error_short_desk" rows="1"><cfoutput>#error.getShort_desk()#</cfoutput></textarea>            
        </div>
        <div class="col-12">
            <label for="error_full_desk">Полное описание</label>            
            <textarea style="resize:none" class="form-control" name="error_full_desk" id="error_full_desk" rows="10"><cfoutput>#error.getFull_desk()#</cfoutput></textarea>            
        </div>
        <div class="col-md-4">
            <label for="error_statuses">Статус</label>
            <select class="form-select" name="error_statuses" id="error_statuses">
                <cfoutput query="statuses">
                    <option <cfif id == error.getStatuse().getId()>selected</cfif> value="#id#">
                        #name#
                    </option>
                </cfoutput>                  
            </select>
        </div>
        <div class="col-md-4">
            <label for="error_importances">Срочность</label>
            <select class="form-select" name="error_importances" id="error_importances">
                <cfoutput query="importances">
                    <option <cfif id == error.getImportance().getId()>selected</cfif> value="#id#">
                        #name#
                    </option>
                </cfoutput>  
            </select>
        </div>        
        <div class="col-md-4">
            <label for="error_criticalities">Критичность</label>
            <select class="form-select" name="criticalities" id="error_criticalities">
                <cfoutput query="criticalities">
                    <option <cfif id == error.getCriticality().getId()>selected</cfif> value="#id#">
                        #name#
                    </option>
                </cfoutput>
            </select>
        </div>
        <div class="col-12">
            <p>История</p>
        </div>
        <div class="col-3">
            <label for="error_user">Пользователь</label>
            <input type="hidden" name="error_user_id" id="error_user_id" value="<cfoutput>#error.getUser().getId()#</cfoutput>">            
            <input class="form-control" name="error_user" id="error_user" type="text" readonly value="<cfoutput>#error.getUser().getName()#</cfoutput>">
        </div>
        <div class="col-12">
            <input class="btn btn-success" id="btn_error_form_edit" type="button" value="Сохранить">
        </div>        
    </form>
</div>

<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalLabel">Изменение статуса</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <form class="form row g-3" id="modal_form">
            <div class="col-3">
                <label for="error_status_user">Пользователь</label>
                <input type="hidden" name="error_status_user_id" id="error_status_user_id" value="<cfoutput>#user.getId()#</cfoutput>">            
                <input class="form-control" name="error_status_user" id="error_status_user" type="text" readonly value="<cfoutput>#user.getName()#</cfoutput>">
            </div>
            <div class="col-5">
                <label for="error_status_date">Дата</label>                
                <input class="form-control" name="error_status_date" id="error_status_date" type="datetime-local" readonly value="<cfoutput>#dateformat(Now(),"yyyy-mm-dd")#T#timeFormat(Now(),"HH:MM")#</cfoutput>">
            </div>
            <div class="col-12">
                <textarea style="resize:none" class="form-control" name="error_status_comment" id="error_status_comment" cols="30" rows="10"></textarea>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn_error_form_modal_close" data-bs-dismiss="modal">Закрыть</button>
        <button id="btn_error_form_modal_save" type="button" class="btn btn-primary btn_error_form_modal_save">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<script src="/public/script/error_page.js"></script>