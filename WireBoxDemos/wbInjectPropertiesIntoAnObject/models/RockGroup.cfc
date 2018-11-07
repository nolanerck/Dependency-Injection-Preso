component
{
	public any function init( string groupName, string genre, any bandMember )
	{
		variables.groupName = arguments.groupName;
		variables.genre 	= arguments.genre;
		variables.bandMember = arguments.bandMember;

		return this;
	}

	public void function showBandDetails()
	{
		WriteOutput( "Group Name: " & variables.groupName );
		WriteOutput( "<br />" );
		WriteOutput( "Genre: " & variables.genre );
		WriteOutput( "<br />" );
		variables.bandMember.displayInfo();
	}
	
}