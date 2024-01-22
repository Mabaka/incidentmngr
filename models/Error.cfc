component persistent="true" table="error" name="Error" {
    property name="id" generator="increment";
    property type="number" number;
    property type="timestamp" date;
    property short_desk;
    property full_desk;
    property type="number" user_id;
    property type="number" importances_id;
    property type="number" statuses_id;
    property type="number" criticalities_id;
}