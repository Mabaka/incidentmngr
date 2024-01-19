component displayname="login" {
    public login function init(string inputUsername,string inputPassword){
        this.name = inputUsername;
        this.password = inputPassword;        

        return this;
    };

    public function checkCredentials(){
        var status = "";
        var message = "";
        var id = "";
        var json = "";     

        users = entityLoad("User",{login: this.name});                        
        try {                        
            ORMReload();            
            users = entityLoad("User",{login: this.name});                                         
            if(!arrayLen(users)){
                status = "403";
                message = "Login or password is wrong";
            }else{                
                user = users[1];                
                password = user.getPassword();                

                if(password != this.password){
                    status = "403";
                    message = "Login or password is wrong";
                }
                                
                id = user.getId();                                       
                session.id = user.getId();                
                session.isLoggedIn = true;                                
                status = "200";    
                message = "Logged in";                       
            }
        }catch (any e){
            status = "403";
            message = "Login or password is wrong";
        }

        response = structNew();
        structInsert(response, "this.name", this.name);
        structInsert(response, "status", status);
        structInsert(response, "message", message);
        structInsert(response, "id", id);

        json = serializeJSON(response);

        return json;
    }
}
