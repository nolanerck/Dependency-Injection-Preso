component
{
	variables.name = "John Lennon";
	variables.instrument = "Guitar";

	public any function init( string name, string instrument )
	{
		variables.name = arguments.name;
		variables.instrument = arguments.instrument;

		return this;
	}

	public any function displayInfo()
	{
		WriteOutput( "Name: " & variables.name );
		WriteOutput( "<br />" );
		WriteOutput( "Instrument: " & variables.instrument );
		WriteOutput( "<br />" );
	}

}
