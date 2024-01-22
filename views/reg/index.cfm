<div class="form_wrapper container mt-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5">
                <form id="reg_form" , class="form row g-3 justify-content-center align-items-center">

                    <div class="col-md-12">
                        <label for="login">Логин</label>
                        <input required class="form-control" id="login" type="text" name="login" required>
                    </div>

                    <div class="col-md-12">
                        <label for="name">Имя</label>
                        <input required class="form-control" id="name" type="text" name="name" required>
                    </div>

                    <div class="col-md-12">
                        <label for="secondname">Фамилия</label>
                        <input class="form-control" id="secondname" type="text" name="secondname" required>
                    </div>

                    <div class="col-md-12">
                        <label for="password">Пароль</label>
                        <input required class="form-control" id="password" type="password" name="password" required>
                    </div>

                    <div class="row g-3 justify-content-center">
                        <div class="col-3">
                            <input class="btn btn-success" id="btn_reg_form_enter" type="button" value="Зарегистрироваться">
                        </div>                        
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="/public/script/reg_page.js"></script>