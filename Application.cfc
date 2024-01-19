component {
    this.name = hash(getCurrentTemplatePath());

    this.datasources["MyDSN"] = {
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
}
