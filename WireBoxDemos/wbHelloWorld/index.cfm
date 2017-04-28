<!--- super easy use of WireBox to do Dependency Injection in a non-ColdBox app --->

<cfset wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init() />

<cfset wirebox.getInstance( "wbHelloWorld.models.Musician" ).displayInfo() />


