<div class="form_wrapper container">
    <form id="login_form" , class="form row g-3 justify-content-center align-items-center">
        
        <div class="col-md-12">
            <label for="login">Логин</label>
            <input class="form-control" id="login" type="text" name="login" required>
        </div>        

        <div class="col-md-12">
            <label for="password">Пароль</label>
            <input class="form-control" id="password" type="password" name="password" required>
        </div>
        
        <div class="col-md-1">
            <input class="btn btn-success" id="btn_login_form_enter" type="button" value="Войти">
        </div>
        
        <div class="col-md-1">
            <a class="btn btn-success" href="/reg/">Зарегистрироваться</a>
        </div>        
    </form>
</div>

<script src="/public/script/login_page.js"></script>