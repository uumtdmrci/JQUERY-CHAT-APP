<cfcomponent>
  	<cffunction name="getonay" access="remote" returnFormat="JSON" output="false" returntype="string">
		 <cfargument name="kime" type="string" required="no">
  		<cfargument name="message" type="string" required="no">
  		<cfargument name="manager_id_" type="string" required="no">
			<cfquery name="upd__" datasource="nextstation_projeonline">
				INSERT INTO
						CHAT
							(
								MESSAGE,
								CHAT_ID,
								KISI,
								SEND_DATE
							)
						VALUES
							(
								'#arguments.message#',
								#arguments.kime#,
								#arguments.manager_id_#,
								#now()#
							)
			 </cfquery>    
			<cfset message = "1"> 
			<cfreturn message >  
	</cffunction> 
 </cfcomponent>