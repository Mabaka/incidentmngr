<div class="form_wrapper container">
    <form id="form_user_profile" , class="form row g-3 justify-content-center align-items-center">
        
        <input value="<cfoutput>#user.getId()#</cfoutput>" id="id" type="hidden" name="id">

        <div class="col-md-12">
            <label for="login">Логин</label>
            <input value="<cfoutput>#user.getLogin()#</cfoutput>" class="form-control" id="login" type="text" name="login">
        </div>        

        <div class="col-md-12">
            <label for="name">Имя</label>
            <input value="<cfoutput>#user.getName()#</cfoutput>" class="form-control" id="name" type="text" name="name">
        </div>        

        <div class="col-md-12">
            <label for="secondname">Фамилия</label>
            <input value="<cfoutput>#user.getSecondname()#</cfoutput>" class="form-control" id="secondname" type="text" name="secondname">
        </div>        

        <div class="col-md-12">
            <label for="password">Пароль</label>
            <input value="<cfoutput>#user.getPassword()#</cfoutput>" class="form-control" id="password" type="password" name="password">
        </div>
        
        <div class="col-md-1">
            <input class="btn btn-success" id="btn_reg_form_enter" type="button" value="Сохранить">
        </div>        
    </form>
</div>

<script src="/public/script/user_page.js"></script>