component persistent="true" table="error_story" name="ErrorStory" {
    property name="id" generator="increment";
    property comment;
    property type="number" error_id;
    property type="number" user_id;
    property type="timestamp" date;

    property type="any"
    name="error"
    fieldtype="many-to-one"
    cfc="Error"
    fkcolumn="error_id"
    insert="false" 
    update="false";

    property type="any"
    name="user"
    fieldtype="many-to-one"
    cfc="User"
    fkcolumn="user_id"
    insert="false" 
    update="false";
}
