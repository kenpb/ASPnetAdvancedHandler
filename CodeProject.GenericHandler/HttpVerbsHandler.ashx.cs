﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using App.Utilities.Web.Handlers;

namespace CodeProject.GenericHandler
{
	public class HttpVerbsHandler : BaseHandler
	{
		public object GET(string test = null)
		{
			SetResponseContentType(ResponseContentTypes.JSON);
			return new MyObject() { Name = "GET -> AlexCode", Age = 35, Test = test };
		}

		public object PUT()
		{
			SetResponseContentType(ResponseContentTypes.JSON);
			return new { Name = "Alex", Age = 35 };
		}

		[HttpPost]
		public object OtherMethod(string name)
		{ 
			return string.Format("<b>The OtherMethod say hello to {0}</b>", name);
		}

		public class MyObject
		{
			public string Name { get; set; }
			public Int32 Age { get; set; }
            public string Test { get; set; }
		}

	}
}