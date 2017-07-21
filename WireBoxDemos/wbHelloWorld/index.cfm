<!--- super easy use of WireBox to do Dependency Injection in a non-ColdBox app --->

<cfset wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init() />

<!--- old way --->
<cfset musician = Createobject( "component", "wbHelloWorld.models.Musician" ).init() />
<cfset musician.displayInfo() />

<!--- new way --->
<cfset wirebox.getInstance( "wbHelloWorld.models.Musician" ).displayInfo() />


