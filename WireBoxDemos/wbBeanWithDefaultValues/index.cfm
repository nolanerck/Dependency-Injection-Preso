<!--- WireBox with the config CFC being passed in so we can set some options. 

	and providing some defaults for the Musician CFC from outside that file.
--->

<cfset myConfig = createObject( "component", "config.WireBoxBinder" ) />

<cfset wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig ) />

<!--- <cfset wirebox.getInstance( "musician" ).displayInfo() /> --->

<br /><br />

<!--- get it with the 'alias' from our Binder myConfig. note how displayInfo() used the map() settings. --->
<cfset wirebox.getInstance( "constructedMusician" ).displayInfo() />

