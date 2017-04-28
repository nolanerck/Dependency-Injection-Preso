component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="false"
	{
		var response = arguments.invocation.proceed();
		
		response = "checking permissions...<br />" & response & "<br />logging this call to a security audit log...";

		return response;
	}

}

