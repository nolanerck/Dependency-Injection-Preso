component
{
	public any function init( string groupName, string genre )
	{
		variables.groupName = arguments.groupName;
		variables.genre 	= arguments.genre;

		return this;
	}

	public void function showBandDetails()
	{
		WriteOutput( "Group Name: " & variables.groupName );
		WriteOutput( "<br />" );
		WriteOutput( "Genre: " & variables.genre );
	}
	
}