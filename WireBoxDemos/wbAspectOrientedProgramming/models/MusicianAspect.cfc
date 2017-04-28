component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="false"
	{
		WriteOutput( "Performing security/permissions check before my Musician object is invoked...<br />" );
		arguments.invocation.proceed();
		WriteOutput( "Sending a log entry to the database, noting that this was run correctly on #Now()#...<br />" );
	}
}

