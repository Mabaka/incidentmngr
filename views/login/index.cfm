<div class="form_wrapper">    
    <form name="login_form", id="login_form", class="form">
        <div class="elements_wrapper">

            <div class="login_element_wrapper">
                <div class="login_element">
                    <label for="login">Логин</label>
                    <input id="login" type="text" name="login" required>                    
                </div>
            </div>

            <div class="password_element_wrapper">
                <div class="password_element">
                    <label for="password">Пароль</label>
                    <input id="password" type="password" name="password" required>
                </div>
            </div>

            <div class="button_element_wrapper">
                <div class="button_element">
                    <input id="btn_login_form_enter" type="button" value="Войти">
                </div>
            </div>

            <div class="a_button_element_wrapper">
                <div class="a_button_element">
                    <a href="/reg/">Зарегистрироваться</a>
                </div>
            </div>
        </div>
    </form>
</div>

<script src="/public/script/login_page.js"></script>