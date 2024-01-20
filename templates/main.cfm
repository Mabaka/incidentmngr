<cfcontent type="text/html charset=UTF-8">
<!DOCTYPE html>
<html lang="ru">
<head>	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">	
	<title>Incident manager</title>
</head>
<body>
	<cfif isDefined("showheader")>
		<cfif #showheader#>
			<cfinclude  template="header.cfm">          
		</cfif>
	<cfelse>		
		<cfinclude  template="header.cfm">
	</cfif>		
	<cfinclude	template=#view#>
	<cfinclude  template="footer.cfm"> 
</body>
</html>
