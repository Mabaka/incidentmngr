component output='false' { 
    this.name = "incidentmngr";

	this.ormEnabled = true;			
    this.mappings["/model"] = ExpandPath('../models');
	this.SetClientCookies = true;

	//Подключаемся к БД
    this.datasources["incidentmngr"] = {
		class: 'org.postgresql.Driver '
		, bundleName: 'org.postgresql.jdbc'
		, bundleVersion: '42.6.0'
		, connectionString: 'jdbc:postgresql://localhost:5432/incidentmngr'
		, username: 'postgres'
		, password: "postgres"		
		, blob:true
		, clob:true
		, connectionLimit:100 // default:-1
		};

	this.dataSource = "incidentmngr";    

	this.ormSettings = {
    	logsql = true,
    	dialect = "PostgreSQLDialect",
        CFCLocation = "/models"
  	};	
}