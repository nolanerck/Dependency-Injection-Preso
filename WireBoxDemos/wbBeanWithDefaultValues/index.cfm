<!--- WireBox with the config CFC being passed in so we can set some options. 

	and providing some defaults for the Musician CFC from outside that file.
--->

<cfset myConfig = createObject( "component", "config.WireBoxWithDefaultsForABean" ) />

<cfset injector = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig ) />

<cfset injector.getInstance( target="Musician", initArguments = { instrument="steve" } ).displayInfo() />

