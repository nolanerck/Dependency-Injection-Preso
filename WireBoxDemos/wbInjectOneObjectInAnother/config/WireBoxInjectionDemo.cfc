component extends="WireBox.system.ioc.config.Binder"{
	
	/**
	* Configure WireBox, that's it!
	*/
	function configure(){		

		// The WireBox configuration structure DSL
		wireBox = {
			// Scope registration, automatically register a wirebox injector instance on any CF scope
			// By default it registeres itself on application scope
			scopeRegistration = {
				enabled = true,
				scope   = "application", // server, cluster, session, application
				key		= "wireBox"
			},

			// DSL Namespace registrations
			customDSL = {
				// namespace = "mapping name"
			},
			
			// Custom Storage Scopes
			customScopes = {
				// annotationName = "mapping name"
			},
			
			// Or do it this way....
			// Package scan locations
			scanLocations = [ "wbInjectOneObjectInAnother.models" ],
			
			// Stop Recursions
			stopRecursions = [],
			
			// Parent Injector to assign to the configured injector, this must be an object reference
			parentInjector = "",
			
			// Register all event listeners here, they are created in the specified order
			listeners = [
				// { class="", name="", properties={} }
			]			
		};
		
	}

	map( "demoRockGroup" ).to( "wbInjectOneObjectInAnother.models.RockGroup" )
						  .initArg( name="groupName", value="Depehe Mode" )
						  .initArg( name="genre", value="Synth-Pop" );

}