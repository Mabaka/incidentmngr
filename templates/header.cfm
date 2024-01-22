<header class="header mb-5">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="/">Менеджер инцидентов</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="/error/add/">Добавить ошибку</a></li>
                    <li class="nav-item active"><a class="nav-link" href="/error/list/">Список ошибок</a></li>
                    <li class="nav-item active"><a class="nav-link" href="/user/add/">Добавить пользователя</a></li>                                        
                </ul>
            </div>
            <div class="d-flex align-items-center">
                <cfif isDefined('user')>
                    <a class="nav-link" href="/user/profile/"><cfoutput>#user.getName()#</cfoutput></a>
                </cfif>
            </div>
            <div class="d-flex align-items-center">
                <a class="nav-link" href="/controller/login?action=logout">Выйти</a>
            </div>            
        </div>        
    </nav>    
</header>