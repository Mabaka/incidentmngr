<div class="form_wrapper">
    <form name="login_form", id="login_form", class="form", action="/controller/reg" method="post">
        <div class="elements_wrapper">

            <div class="name_element_wrapper">
                <div class="name_element">
                    <label for="name">Имя</label>
                    <input type="name" name="name" required>
                </div>
            </div>

            <div class="secondname_element_wrapper">
                <div class="secondname_element">
                    <label for="secondname">Фамилия</label>
                    <input type="secondname" name="secondname" required>
                </div>
            </div>

            <div class="login_element_wrapper">
                <div class="login_element">
                    <label for="login">Имя пользователя</label>
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
                    <button>Зарегистрироваться</button>
                </div>
            </div>
        </div>
    </form>
</div>