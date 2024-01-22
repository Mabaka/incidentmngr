component displayname="error" {
    public function addNew(
        string error_num,
        string error_date,
        string error_short_desk,
        string error_full_desk,
        string error_statuse,
        string error_importance,
        string error_criticality,
        string error_user
    ){        
        var status = "";
        var message = "";
        var id = "";
        var json = "";

        ormReload();
        error = entityNew("Error");
        error.setNumber(error_num);
        error.setDate(error_date);
        error.setShort_desk(error_short_desk);
        error.setFull_desk(error_short_desk);
        error.setShort_desk(error_full_desk);
        error.setUser_id(int(error_user));
        error.setImportances_id(int(error_importance));
        error.setCriticalities_id(int(error_criticality));
        error.setStatuses_id(int(error_statuse));
        EntitySave(error); 
        return error;

        try{                      
            status = 200;    
            message = "Success";    
        }catch (any e){
            status = 404;    
            message = "Error";   
        }

        response = structNew();        
        structInsert(response, "status", status);
        structInsert(response, "message", message);        

        json = serializeJSON(response);

        return json;
    }
}
        

