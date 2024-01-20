<cfcontent type="text/html charset=UTF-8">
<!DOCTYPE html>
<html lang="ru">
<head>	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
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
