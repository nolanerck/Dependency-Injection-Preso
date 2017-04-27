<!--- WireBox with the config CFC being passed in so we can set some options. --->

<cfset myConfig = createObject( "component", "config.WireBox" ) />

<cfset injector = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig ) />

<cfset injector.getInstance( "Musician" ).displayInfo() />


