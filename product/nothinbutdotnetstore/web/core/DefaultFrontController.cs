using nothinbutdotnetstore.web.core.stubs;

namespace nothinbutdotnetstore.web.core
{
    public class DefaultFrontController : FrontController
    {
        CommandRegistry command_registry;

        public DefaultFrontController() : this(new DefaultCommandRegistry(new StubSetOfCommands()))
        {
        }

        public DefaultFrontController(CommandRegistry command_registry)
        {
            this.command_registry = command_registry;
        }

        public void process(Request request)
        {
            command_registry.get_command_that_can_handle(request).process(request);
        }
    }
}