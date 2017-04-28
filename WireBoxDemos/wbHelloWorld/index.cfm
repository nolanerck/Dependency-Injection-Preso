<!--- super easy use of WireBox to do Dependency Injection in a non-ColdBox app --->

<cfset injector = createObject( "component", "wirebox.system.ioc.Injector" ).init() />

<cfset injector.getInstance( "models.Musician" ).displayInfo() />


