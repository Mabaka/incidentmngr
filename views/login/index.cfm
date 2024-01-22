<div class="form_wrapper container mt-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5">        
                <form id="login_form" , class="form row g-3 justify-content-center align-items-center">
                
                    <div class="col-md-12">
                        <label for="login">Логин</label>
                        <input required class="form-control" id="login" type="text" name="login" required>
                    </div>        
            
                    <div class="col-md-12">
                        <label for="password">Пароль</label>
                        <input  class="form-control" id="password" type="password" name="password" required>
                    </div>
                    
                    <div class="row g-3 justify-content-center">
                        <div class="col-3">
                            <input class="btn btn-success" id="btn_login_form_enter" type="button" value="Войти">
                        </div>
                        
                        <div class="col-3">
                            <a class="btn btn-success" href="/reg/">Зарегистрироваться</a>
                        </div>        
                    </div>                    
                </form>
            </div>    
        </div>
    </div>    
</div>

<script src="/public/script/login_page.js"></script>