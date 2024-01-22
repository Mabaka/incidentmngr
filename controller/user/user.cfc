component displayname="login" {
    public function getCurrentUser(){                
        try {
            if(isDefined("session.isLoggedIn")) {                
                if(session.isLoggedIn) {
                    users = entityLoad("User",{id: session.id});                                              
                    if(arrayLen(users) is TRUE){
                        user = users[1];
                        return user;      
                    }
                }                
            }                 
        }catch (any e){
            return user;
        }
    }

    public function addNewUser(string login, string name, string secondname="", string password) {
        user = entityNew("User");
        var status = "";
        var message = "";
        var id = "";
        var json = "";

        try{    
            user.setLogin(login);
            user.setName(name);
            user.setSecondname(secondname);
            user.setPassword(password);

            EntitySave(user);            
            status = 200;    
            message = "Success";                        
        }catch (any e){
            status = 404;    
            message = "Error";                        
        }

        response = structNew();
        structInsert(response, "name", name);
        structInsert(response, "status", status);
        structInsert(response, "message", message);
        structInsert(response, "id", user.getId());

        json = serializeJSON(response);

        return json;
    }

    public function deleteUser() {
        
    }

    public function editUser(string id,string login,string name, string secondname,string password) {        
        var status = "";
        var message = "";        
        var json = "";                       
        try{    
            user = entityLoad("User",{id: id})[1];
            user.setLogin(login);
            user.setName(name);
            user.setSecondname(secondname);
            user.setPassword(password);

            EntitySave(user);            
            status = 200;    
            message = "Success";                        
        }catch (any e){
            status = 404;    
            message = "Error";                        
        }

        response = structNew();
        structInsert(response, "name", name);
        structInsert(response, "status", status);
        structInsert(response, "message", message);
        structInsert(response, "id", id);

        json = serializeJSON(response);

        return json;
    }
}
        

