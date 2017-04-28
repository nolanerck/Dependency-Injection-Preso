component
{
	variables.name = "Ringo Starr";
	variables.instrument = "Drums";

	public any function init( string name, string instrument )
	{
		variables.name = arguments.name;
		variables.instrument = arguments.instrument;

		return this;
	}

	public any function displayMusicianDetails()
	{
		WriteOutput( "Name: " & variables.name );
		WriteOutput( "<br />" );
		WriteOutput( "Instrument: " & variables.instrument );
	}

}
