<header>
    <div class="header_container">
        <div class="logo"></div>
        <div class="menu_wrapper">
            <menu class="menu">
                <ul>
                    <li><a href="/error/add/">Добавить ошибку</a></li>
                    <li><a href="/error/list/">Список ошибок</a></li>
                    <li><a href="/user_controll/add/">Добавить пользователя</a></li>                    
                    <li><a href="/controller/login?action=logout">Выйти</a></li>
                </ul>
            </menu>                    
        </div>
        
        <div class="auth_wrapper">
            <div class="auth">
                <cfif isDefined("session.isLoggedIn")>
                    <cfif session.isLoggedIn>
                        <div class="user_name">
                            <cfif isDefined('user')>
                                <a href="/user"><cfoutput>#user.getName()#</cfoutput></a>
                            </cfif>
                        </div>                        
                    </cfif>
                <cfelse>
                    <cfoutput>
                        <div class="a_btn_login"><a href="">Войти</a></div>                          
                    </cfoutput>
                </cfif>
            </div>
        </div>
    </div>
</header>