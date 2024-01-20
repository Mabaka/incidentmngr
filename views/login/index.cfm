<div class="form_wrapper">
    <form name="login_form", id="login_form", class="form", action="/controller/login?action=login" method="post">
        <div class="elements_wrapper">

            <div class="login_element_wrapper">
                <div class="login_element">
                    <label for="login">Логин</label>
                    <input type="text" name="login" required>                    
                </div>
            </div>

            <div class="password_element_wrapper">
                <div class="password_element">
                    <label for="password">Пароль</label>
                    <input type="password" name="password" required>
                </div>
            </div>

            <div class="button_element_wrapper">
                <div class="button_element">
                    <button>Войти</button>
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