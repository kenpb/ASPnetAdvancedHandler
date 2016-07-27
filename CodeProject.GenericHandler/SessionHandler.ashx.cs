using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using App.Utilities.Web.Handlers;

namespace CodeProject.GenericHandler
{
    public class SessionHandler : BaseHandler
    {
        public object GET(string key = null)
        {
            SetResponseContentType(ResponseContentTypes.JSON);
            if (key != null)
                if (context.Session[key] != null)
                    return new { 
                        Key = key,
                        Value = context.Session[key]
                    };

            return context.Session;
        }

        public object POST(string key, string value)
        {
            if (key != null && value != null)
                context.Session[key] = value;

            return true;
        }

        public object DELETE()
        {
            // Kill the session
            context.Session.Abandon();

            return true;
        }
    }
}