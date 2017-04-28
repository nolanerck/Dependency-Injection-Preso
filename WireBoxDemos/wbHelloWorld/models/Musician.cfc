component
{
	variables.name = "";
	variables.instrument = "";

	public any function init( string name )
	{
		variables.name = arguments.name;
		variables.instrument = "Guitar";
	}

	public any function displayInfo()
	{
		WriteOutput( "Name: " & variables.name );
		WriteOutput( "<br />" );
		WriteOutput( "Instrument: " & variables.instrument );
	}

}
