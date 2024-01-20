component displayname="login" {
    public function getCurrentUser(){        
        user = entityNew("User");
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

    public function addNewUser() {

    }

    public function deleteUser() {
        
    }

    public function editUser() {
        
    }
}
        

