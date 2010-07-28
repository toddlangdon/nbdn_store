using System.Web;

namespace nothinbutdotnetstore.web
{
    public class RawHandler : IHttpHandler
    {
        FrontController front_controller;
        RequestFactory request_factory;

        public RawHandler(FrontController front_controller, RequestFactory request_factory)
        {
            this.front_controller = front_controller;
            this.request_factory = request_factory;
        }

        public void ProcessRequest(HttpContext context)
        {
            front_controller.process(request_factory.create_request_from(context));
        }

        public bool IsReusable
        {
            get { return true; }
        }
    }
}