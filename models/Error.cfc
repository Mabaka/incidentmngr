component persistent="true" table="error" name="Error" {
    property name="id" generator="increment";
    property type="number" number;
    property type="timestamp" date;
    property short_desk;
    property full_desk;    
    
    property type="number" importances_id;
    property type="number" statuses_id;
    property type="number" criticalities_id;   
    property type="number" user_id;   

    property type="any"
    name="user"
    fieldtype="many-to-one"
    cfc="User"
    fkcolumn="user_id"
    insert="false" 
    update="false";

    property type="any"
    name="statuse"
    fieldtype="many-to-one"
    cfc="Statuses"
    fkcolumn="statuses_id"
    insert="false" 
    update="false";

    property type="any"
    name="importance"
    fieldtype="many-to-one"
    cfc="Importances"
    fkcolumn="importances_id"
    insert="false" 
    update="false";

    property type="any"
    name="criticality"
    fieldtype="many-to-one"
    cfc="Criticalities"
    fkcolumn="criticalities_id"
    insert="false" 
    update="false";
}