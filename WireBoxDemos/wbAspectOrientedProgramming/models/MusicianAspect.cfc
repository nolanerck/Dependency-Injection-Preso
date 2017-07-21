component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="false"
	{
		var response = arguments.invocation.proceed();
		
		response = "checking permissions...<br />" & response & "<br />exporting a copy of the data to the backkup server...";

		return response;
	}

}

