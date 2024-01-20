component displayname="login" {
    public function init(string inputUsername="",string inputPassword=""){
        this.name = inputUsername;
        this.password = inputPassword;        

        return this;
    };

    public function checkCredentials(){
        var status = "";
        var message = "";
        var id = "";
        var json = "";
        
        try {                        
            ORMReload();            
            users = entityLoad("User",{login: this.name});                                         
            if(!arrayLen(users)){
                status = 403;
                message = "Login or password is wrong";
            }else{                
                user = users[1];                
                password = user.getPassword();                
                
                if(password == this.password){
                    id = user.getId();                                       
                    session.id = user.getId();                
                    session.isLoggedIn = true;                                
                    status = 200;    
                    message = "Logged in";                                           
                }else{
                    status = 403;
                    message = "Login or password is wrong";                    
                }                                                
            }
        }catch (any e){
            status = 403;
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

    public function logout(){
        session.id = "";
        session.isLoggedIn = false;
        sessionRotate();        
    }

    public function reg(string name,string secondname){
        var status = "";
        var message = "";
        var id = "";
        var json = "";

        try{

        }catch(any e){
            status = "404";
            message = "Registration is failed";
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
