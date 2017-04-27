component
{
	variables.name = "";
	variables.instrument = "";

	public any function init()
	{
		variables.name = "David Bowie";
		variables.instrument = "Guitar";
	}

	public any function displayInfo()
	{
		WriteOutput( "Name: " & variables.name );
		WriteOutput( "<br />" );
		WriteOutput( "Instrument: " & variables.instrument );
	}

}
