<header>
    <div class="header_container">
        <div class="logo"></div>
        <div class="menu_wrapper">
            <menu>
                <ul>
                    <li></li>
                </ul>
            </menu>                    
        </div>
        <div class="auth_wrapper">
            <div class="auth">
                <cfif isDefined("session.isLoggedIn")>
                    <cfif session.isLoggedIn>
                        <div class="user_name">
                            <cfif isDefined('user')>
                                <cfoutput>
                                    #user.getName()#
                                </cfoutput>
                            </cfif>
                        </div>
                        <div class="a_btn_logout"><a href="/controller/login?action=logout">Выйти</a></div>                          
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