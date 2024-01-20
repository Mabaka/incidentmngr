component output='false'{
    this.name = "incidentmngr";

	this.mappings['/controller'] = getDirectoryFromPath( getBaseTemplatePath() ) & 'controller';			
	
	this.ormEnabled = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,2,0,0);
	this.SetClientCookies = true;
	
	//Подключаемся к БД
    this.datasources["incidentmngr"] = {
		class: 'org.postgresql.Driver '
		, bundleName: 'org.postgresql.jdbc'
		, bundleVersion: '42.6.0'
		, connectionString: 'jdbc:postgresql://localhost:5432/incidentmngr'
		, username: 'postgres'
		, password: "postgres"		
		, connectionLimit:100 // default:-1
		};

	this.dataSource = "incidentmngr";

	this.ormSettings = {
    	logsql = true,
    	dialect = "PostgreSQLDialect"		
  	};
		
	session.id = "";
	session.isLoggedIn = false;					

}

