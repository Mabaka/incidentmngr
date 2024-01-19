component output='false'{
    this.name = hash(getCurrentTemplatePath());
	
	this.ormEnabled = true;
	
	//Подключаемся к БД
    this.datasources["incidentmngr"] = {
		class: 'org.postgresql.Driver '
		, bundleName: 'org.postgresql.jdbc'
		, bundleVersion: '42.6.0'
		, connectionString: 'jdbc:postgresql://localhost:5432/incidentmngr'
		, username: 'postgres'
		, password: "postgres"
		// optional settings
		, blob:true // default: false
		, clob:true // default: false
		, connectionLimit:100 // default:-1
		};

	this.dataSource = "incidentmngr";

	this.ormSettings = {
    	logsql = true,
    	dialect = "PostgreSQLDialect"
  	};

	//Обработчики событий приложения
	public boolean function OnApplicationStart() {
        return true;
    }

	public void function OnSessionStart() {
        return;
    }
}

